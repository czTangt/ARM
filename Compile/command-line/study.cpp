#include <elf.h>
#include <stdio.h>

/*---------------------------------- C 语言部分
 * ----------------------------------*/
// 函数参数传递、栈帧结构、结构体返回、整数除法

// 1. 函数参数传递与栈帧结构示例
int func_assign(char a, short b, int c, float d, double e) {
    // 局部变量存储在栈上，形参修改不影响实参
    a = 0x10;
    b = 0x30;
    c = 0x50;
    d = 9.0f;
    e = 110.0;
    return c;  // 返回值通过寄存器传递（如 eax）
}

// 2. 整数除法汇编实现示例
void func_calculate() {
    int a1 = 10, a2 = 7;
    int a3 = a1 * a2;  // 可能生成 imul 指令
    int a4 = a1 / a2;  // 生成 idiv 指令（有符号除法）
}

// 3. 结构体返回机制示例（通过隐藏指针传递）
struct func {
    int n1, n2, n3;
    const char *lpstr;
};

struct func func_ret_struct() {
    struct func f = {0};
    f.n1          = 1;  // 实际通过隐藏指针操作调用者分配的内存
    f.lpstr       = "123";
    return f;
}

/*---------------------------------- C++ 部分
 * ----------------------------------*/
// 类布局、this指针、构造函数、虚函数表

// 4. 类定义（含成员变量、构造函数、虚函数）
class CNumber {
   public:
    int num1;      // 成员变量按声明顺序存储
    int num2 = 2;  // 类内初始化（C++11特性）
    int num3;

    CNumber() {  // 构造函数在对象创建时调用
        printf("Constructor\n");
    }

    ~CNumber() {  // 析构函数在作用域结束时调用
        printf("Destructor\n");
    }

    // 成员函数隐含 this 指针（通过寄存器传递，如 ARM 的 r0）
    void setnumber1(int n) { num1 = n; }
    int getnumber1() { return num1; }

    // 虚函数触发虚表机制
    virtual void setnumber3(int n) { num3 = n; }
    virtual int getnumber3() { return num3; }
};

CNumber g_cnumber;  // 全局对象在 .init_array 初始化

// 5. 主函数（混合 C/C++ 调用）
int main(int argc, char *argv[]) {
    // C 函数调用
    func_assign(0x11, 0x21, 0x31, 10.0f, 100.0);
    func_calculate();
    struct func f = func_ret_struct();

    // C++ 对象操作
    CNumber cnumber;
    cnumber.num1 = 1;
    cnumber.setnumber1(3);
    int m = cnumber.getnumber1() + g_cnumber.getnumber3();

    return 0;
}