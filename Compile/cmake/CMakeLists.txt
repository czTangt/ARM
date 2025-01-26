# 指定 CMake 的最小版本
cmake_minimum_required(VERSION 3.10)

# 加载 Android NDK 工具链文件
if(NOT DEFINED ENV{ANDROID_NDK_HOME})
    message(FATAL_ERROR "Please set the environment variable ANDROID_NDK_HOME!")
endif()
set(CMAKE_TOOLCHAIN_FILE "$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")

# 设置 Android 编译参数
set(ANDROID_ABI "arm64-v8a")       # 指定 ARM64 架构
set(ANDROID_PLATFORM "android-27") # 使用 API 27

# 设置项目名称，需要在上面两个对于 android 架构的设置之后，不然编译出其他结果
project(study)

# 设置输出目录
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/target)

# 添加可执行文件
add_executable(a src/a.cpp)
add_executable(b src/b.cpp)

# 设置 C++ 标准
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
