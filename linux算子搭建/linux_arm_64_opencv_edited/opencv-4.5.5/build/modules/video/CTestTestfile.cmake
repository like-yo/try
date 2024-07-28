# CMake generated Testfile for 
# Source directory: /home/pan/opencv-4.5.5/modules/video
# Build directory: /home/pan/opencv-4.5.5/build/modules/video
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(opencv_test_video "/home/pan/opencv-4.5.5/build/bin/opencv_test_video" "--gtest_output=xml:opencv_test_video.xml")
set_tests_properties(opencv_test_video PROPERTIES  LABELS "Main;opencv_video;Accuracy" WORKING_DIRECTORY "/home/pan/opencv-4.5.5/build/test-reports/accuracy" _BACKTRACE_TRIPLES "/home/pan/opencv-4.5.5/cmake/OpenCVUtils.cmake;1738;add_test;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1352;ocv_add_test_from_target;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1110;ocv_add_accuracy_tests;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;2;ocv_define_module;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;0;")
add_test(opencv_perf_video "/home/pan/opencv-4.5.5/build/bin/opencv_perf_video" "--gtest_output=xml:opencv_perf_video.xml")
set_tests_properties(opencv_perf_video PROPERTIES  LABELS "Main;opencv_video;Performance" WORKING_DIRECTORY "/home/pan/opencv-4.5.5/build/test-reports/performance" _BACKTRACE_TRIPLES "/home/pan/opencv-4.5.5/cmake/OpenCVUtils.cmake;1738;add_test;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1251;ocv_add_test_from_target;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1111;ocv_add_perf_tests;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;2;ocv_define_module;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;0;")
add_test(opencv_sanity_video "/home/pan/opencv-4.5.5/build/bin/opencv_perf_video" "--gtest_output=xml:opencv_perf_video.xml" "--perf_min_samples=1" "--perf_force_samples=1" "--perf_verify_sanity")
set_tests_properties(opencv_sanity_video PROPERTIES  LABELS "Main;opencv_video;Sanity" WORKING_DIRECTORY "/home/pan/opencv-4.5.5/build/test-reports/sanity" _BACKTRACE_TRIPLES "/home/pan/opencv-4.5.5/cmake/OpenCVUtils.cmake;1738;add_test;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1252;ocv_add_test_from_target;/home/pan/opencv-4.5.5/cmake/OpenCVModule.cmake;1111;ocv_add_perf_tests;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;2;ocv_define_module;/home/pan/opencv-4.5.5/modules/video/CMakeLists.txt;0;")
