#include "findHardDisk.h"
#include <opencv2/opencv.hpp>
#include <iostream>

bool findHardDisk(const cv::Mat& inputImage, cv::Mat& outputImage) {
    // 检查输入图像是否为空
    if (inputImage.empty()) {
        std::cerr << "Error: Input image is empty." << std::endl;
        return false;
    }

    // 将图像转换为灰度图
    cv::Mat gray;
    cv::cvtColor(inputImage, gray, cv::COLOR_BGR2GRAY);

    // 对灰度图像进行高斯模糊
    cv::Mat blurred;
    cv::GaussianBlur(gray, blurred, cv::Size(5, 5), 0);

    // 使用Canny算法检测边缘
    cv::Mat edges;
    cv::Canny(blurred, edges, 80, 200);

    std::vector<std::vector<cv::Point>> contours;
    cv::findContours(edges.clone(), contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

    for (const auto& contour : contours) {
        cv::Rect boundingRect = cv::boundingRect(contour);
        double area = cv::contourArea(contour);

        if (20 < area && area < 3000 && 8 < boundingRect.width && boundingRect.width < 50 && 30 < boundingRect.height && boundingRect.height < 50) {
            cv::rectangle(inputImage, cv::Point(boundingRect.x - 150, boundingRect.y), 
                          cv::Point(boundingRect.x + boundingRect.width, boundingRect.y + boundingRect.height), 
                          cv::Scalar(0, 255, 0), 2);

            cv::putText(inputImage, "(" + std::to_string(boundingRect.x - 150) + "," + std::to_string(boundingRect.y) + ")",
                        cv::Point(boundingRect.x - 150, boundingRect.y - 10), 
                        cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 255), 2);
        }
    }

    // 将处理结果图像保存到输出图像对象中
    outputImage = inputImage.clone();

    return true;
}