# 变量定义
CXX = g++
CXXFLAGS = -Iinclude -Wall -g
SRCDIR = src
INCDIR = include
BUILDDIR = build
TARGET = $(BUILDDIR)/app

# 查找所有源文件和目标文件
SRCS = $(wildcard $(SRCDIR)/*.cpp)
OBJS = $(patsubst $(SRCDIR)/%.cpp, $(BUILDDIR)/%.o, $(SRCS))

# 默认目标
all: $(TARGET)

# 生成可执行文件
$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) -o $@ $^

# 生成目标文件
$(BUILDDIR)/%.o: $(SRCDIR)/%.cpp
	mkdir -p $(BUILDDIR)
	$(CXX) $(CXXFLAGS) -c $< -o $@

# 清理目标
clean:
	rm -rf $(BUILDDIR)

# 伪目标
.PHONY: all clean