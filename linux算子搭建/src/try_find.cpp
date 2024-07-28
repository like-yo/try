#include <iostream>
#include "findHardDisk.h"
#include <opencv2/opencv.hpp>
#include <sys/stat.h>
int main() {
    // 读取图像
    cv::Mat inputImage = cv::imread("../src/image/detect.png", cv::IMREAD_COLOR);
    if (inputImage.empty()) {
        std::cerr << "Error: Could not read image." << std::endl;
        return -1;
    }

    // 创建输出图像对象
    cv::Mat outputImage;

    // 调用图像处理函数
    if (findHardDisk(inputImage, outputImage)) {
        if(mkdir("../src/output",0755) == 0){
        // 保存处理后的图像
        std::cout << "output folder is creating..." << std::endl;
        }
        else{
            std::cout << "output folder is already exit" << std::endl;
        }
        cv::imwrite("../src/output/Detected_edges.jpg", outputImage);
        std::cout << "Processed image saved at: src/output/Detected_edges.jpg" << std::endl;
    } else {
        std::cerr << "Image processing failed." << std::endl;
        return -1;
    }
    return 0;
}