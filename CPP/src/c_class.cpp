#include<stdio.h>
/*
    1. 空类
    2. 成员变量
    3. 成员函数 -> 隐藏的this指针，为r0
    4. 构造函数
    5. 全局对象 .init_array 初始化，静态对象在函数中初始化一次
    6. 析构函数
    7. 虚函数  -> 虚表在构造和析构函数中，把虚表地址存放在对象的0地址上，虚表中有虚函数地址
*/
class CNumber {
public:
    int num1;
    int num2 = 2;
    int num3;

    CNumber() {
        printf("CNumber");
    }

    ~CNumber() {
        printf("~CNumber");
    }

    void setnumber1(int n) {
        num1 = 1;
    }
    int getnumber1() {
        return num1;
    }
    int getnumber2() {
        return num2;
    }

    virtual void setnumber3(int n) {
        num3 = n;
    }
    virtual int getnumber3() {
        return num3;
    }
};

CNumber g_cnumber;

int main(int argc, char* atgv[]) {
    CNumber cnumber;
    cnumber.num1 = 1;
    cnumber.num2 = 2;
    cnumber.setnumber1(3);
    int m = cnumber.getnumber1() + g_cnumber.getnumber3();
    return 0;
}