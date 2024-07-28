#ifndef findHardDisk_H
#define findHardDisk_H

#include <opencv2/opencv.hpp>

// 处理图像的函数
// 输入参数：输入图像对象和输出图像对象
// 返回值：处理成功的布尔值
bool findHardDisk(const cv::Mat& inputImage, cv::Mat& outputImage);

#endif
