#include <stdio.h>

//这是一个计算斐波那契数列的程序 最大输入n为10000 超过10000则取10000
#define MAX 10000
#define FLAG
#ifdef FLAG
int myflag=1;
#else
int myflag=0;
#endif

int main()
{
    int a, b, i, t, n;

    a = 0;
    b = 1;
    i = 1;
    scanf("%d", &n);
    if(n>MAX) n=MAX;
    printf("%d\n", a);
    printf("%d\n", b);
    while (i < n)
    {
        t = b;
        b = a + b;
        printf("%d\n", b);
        a = t;
        i = i + 1;
    }
    
    return 0;
}