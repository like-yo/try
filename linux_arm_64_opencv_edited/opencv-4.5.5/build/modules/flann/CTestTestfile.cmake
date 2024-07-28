# CMake generated Testfile for 
# Source directory: /home/pan/opencv-4.5.5/modules/flann
# Build directory: /home/pan/opencv-4.5.5/build/modules/flann
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_flann "/home/pan/opencv-4.5.5/build/bin/opencv_test_flann" "--gtest_output=xml:opencv_test_flann.xml")
set_tests_properties(opencv_test_flann PROPERTIES  LABELS "Main;opencv_flann;Accuracy" WORKING_DIRECTORY "/home/pan/opencv-4.5.5/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/pan/opencv-4.5.5/cmake/OpenCVUtils.cmake;1738;add_test;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;/home/pan/opencv-4.5.5/modules/flann/CMakeLists.txt;2;ocv_define_module;/home/pan/opencv-4.5.5/modules/flann/CMakeLists.txt;0;")
