#include <stdio.h>

// 这是一个计算斐波那契数列的程序 最大输入n为10000 超过10000则取10000
#define MAX 10000
#define FLAG

// 加法函数
int add(int a, int b) {
    return a + b;
}

void print(int result){
    printf("%d\n", result);
}

#ifdef FLAG
int myflag = 1;
#else
int myflag = 0;
#endif

int main()
{
    int a[2];
    int i, t, n;

    a[0] = 0;
    a[1] = 1;
    i = 1;
    scanf("%d", &n);
    if(n < 0) {
        printf("%s\n", "ERROR!");
    }
    if(n == 0){
        print(a[0]);
        return 0;
    }
    if(n > MAX) n = MAX;
    print(a[0]);
    print(a[1]);
    while (i < n)
    {
        t = a[1];
        a[1] = add(a[0], a[1]);  // 使用add函数替换加法
        print(a[1]);
        a[0] = t;
        i = add(i, 1);  // 使用add函数替换加法
    }

    return 0;
}