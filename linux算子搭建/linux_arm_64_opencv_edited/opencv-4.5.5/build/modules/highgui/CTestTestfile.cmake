# CMake generated Testfile for 
# Source directory: /home/pan/opencv-4.5.5/modules/highgui
# Build directory: /home/pan/opencv-4.5.5/build/modules/highgui
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_highgui "/home/pan/opencv-4.5.5/build/bin/opencv_test_highgui" "--gtest_output=xml:opencv_test_highgui.xml")
set_tests_properties(opencv_test_highgui PROPERTIES  LABELS "Main;opencv_highgui;Accuracy" WORKING_DIRECTORY "/home/pan/opencv-4.5.5/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/pan/opencv-4.5.5/cmake/OpenCVUtils.cmake;1738;add_test;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/home/pan/opencv-4.5.5/modules/highgui/CMakeLists.txt;289;ocv_add_accuracy_tests;/home/pan/opencv-4.5.5/modules/highgui/CMakeLists.txt;0;")
