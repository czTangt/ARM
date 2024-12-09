#include<stdio.h>
int func_assign(char a, short b, int c, float d, double e){
    // 基础赋值 -> 这里是局部变量，最后都是要存储在栈上面
    a = 0x10;
    b = 0x30;
    c = 0x50;
    d = 9.0f;
    e = 110.0;
    return c;
}

void func_calculate() {
    // 基础计算 -> 这里主要看除法操作，但是这里还是使用的div进行操作，没有使用mul进行转换
    int a1 = 10;
    int a2 = 7;

    int a3 = a1 * a2;
    int a4 = a1 / a2;
}

struct func {
    int n1;
    int n2;
    int n3;
    const char* lpstr;
};

struct func func_ret_struct() {
    struct func f = { 0 };
    f.n1 = 1;
    f.n2 = 2;
    f.n3 = 3;
    f.lpstr = "123";
    return f;
}

int main(int argc, char* argv[]) {
    func_assign(0x11, 0x21, 0x31, 10.0f, 100.0);
    func_calculate();
    func_ret_struct();
    return 0;
}