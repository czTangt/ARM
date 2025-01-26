cmake_minimum_required(VERSION 3.10)

# 加载 Android NDK 工具链文件
if(NOT DEFINED ENV{ANDROID_NDK_HOME})
    message(FATAL_ERROR "Please set the environment variable ANDROID_NDK_HOME first!")
endif()
set(CMAKE_TOOLCHAIN_FILE "$ENV{ANDROID_NDK_HOME}/build/cmake/android.toolchain.cmake")

# 设置 Android 编译参数
set(ANDROID_ABI "arm64-v8a")      # 对应 aarch64
set(ANDROID_PLATFORM "android-27") # API Level 27

# 设置项目名称
project(ReadELF)

# 设置可执行文件输出目录（会在build目录下创建target子目录）
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/target)

# 添加可执行文件（假设readelf.c在src目录下）
add_executable(readelf src/readelf.c)

# 设置 C 标准（可选）
set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED ON)