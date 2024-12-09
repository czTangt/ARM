# VERSION 1 这里第一句的arm_hello是生成文件名字，hello.c是依赖文件。这里最后生成可执行文件不需要使用`-o`参数
hello32: hello.c
	clang -target armv7a-linux-androideabi21 arm_hello32.s -o arm_hello32
	adb push arm_hello32 /data/local/tmp/arm_hello32
	adb shell chmod +x /data/local/tmp/arm_hello32
	adb shell /data/local/tmp/arm_hello32

hello64: hello.c
	clang -target aarch64-linux-android21 hello.c -o arm_hello
	adb push arm_hello /data/local/tmp/arm_hello
	adb shell chmod +x /data/local/tmp/arm_hello
	adb shell /data/local/tmp/arm_hello

	
# # VERSIN 2
# CXX = clang
# TARGET = arm_hello
# OBJ = arm_hello.o

# $(TARGET): $(OBJ)
# 	$(CXX) -target aarch64-linux-android21 -o $(TARGET) $(OBJ)

# arm_hello.o: hello.c
# 	$(CXX) -target aarch64-linux-android21 -c hello.c -o