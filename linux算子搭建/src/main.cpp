#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/highgui/highgui.hpp>

int main() {

    cv::Mat image = cv::imread("/home/yiyuan/pancaihuang/build/image/detect.png");

    cv::Mat gray;
    cv::cvtColor(image, gray, cv::COLOR_BGR2GRAY);

    cv::Mat blurred;
    cv::GaussianBlur(gray, blurred, cv::Size(5, 5), 0);

    cv::Mat edges;
    cv::Canny(blurred, edges, 80, 200);

    // cv::imwrite("/home/yiyuan/pancaihuang/build/output/Detected_edges.jpg", edges);

    std::vector<std::vector<cv::Point>> contours;
    cv::findContours(edges.clone(), contours, cv::RETR_EXTERNAL, cv::CHAIN_APPROX_SIMPLE);

    for (const auto& contour : contours) {
        cv::Rect boundingRect = cv::boundingRect(contour);
        double area = cv::contourArea(contour);

        if (20 < area && area < 3000 && 8 < boundingRect.width && boundingRect.width < 50 && 30 < boundingRect.height && boundingRect.height < 50) {
            cv::rectangle(image, cv::Point(boundingRect.x - 150, boundingRect.y), 
                          cv::Point(boundingRect.x + boundingRect.width, boundingRect.y + boundingRect.height), 
                          cv::Scalar(0, 255, 0), 2);

            cv::putText(image, "(" + std::to_string(boundingRect.x - 150) + "," + std::to_string(boundingRect.y) + ")",
                        cv::Point(boundingRect.x - 150, boundingRect.y - 10), 
                        cv::FONT_HERSHEY_SIMPLEX, 0.5, cv::Scalar(0, 0, 255), 2);
        }
    }

    cv::imwrite("/home/yiyuan/pancaihuang/build/output/Detected.jpg", image);

    return 0;
}