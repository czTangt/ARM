# command-line
直接使用下面的命令即可得到相应的可执行文件，但是可能会出现头文件相关参数错误的情况。针对 c 和 cpp 使用不同的编译器。
``` bash
clang -target aarch64-linux-android21 hello.c -o arm_hello
clang++ -target aarch64-linux-android21 hello.c -o arm_hello
```

# cmake
按照 cmake 的使用，即下面的命令，就可以在 build/target 目录下找到相应可执行文件。具体的设置查看 CMakeLists.txt 文件。它就不会出现使用命令行出现的头文件参数问题。
``` bash
mkdir build && cd build
cmake ..
make
```

# android-ndk
根据 [官网](https://developer.android.google.cn/ndk/guides/android_mk?hl=zh-cn) 进行配置，只需要在 jni 目录下使用下面的命令即可生成四种架构的文件。具体的配置看 Android.mk 文件内容。
``` bash
ndl-build
```