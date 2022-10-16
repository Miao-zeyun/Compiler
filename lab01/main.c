#include <stdio.h>
#include "test.h"
#pragma message("start compile")
#define COMPILE_TEST
#define MAX(a,b) ((a)>(b)?(a):(b))
#define N 15

#if defined COMPILE_TEST
   #define COMPILE_MESSAGE "compile project(test)\n"
#elif defined COMPILE_REBUID
   #define COMPILE_MESSAGE "compile project(rebuid)\n"
#else
   #define COMPILE_MESSAGE "compile project\n"
#endif

int main()
{
    /*main.c annotations*/
    printf(COMPILE_MESSAGE);
    printf("file:%s\n",__FILE__);
    printf("date:%s\n",__DATE__);
    printf("time:%s\n",__TIME__);

    //test MAX, test.h, function
    int x, y;
    printf("Please input x and y:\n");
    scanf("%d%d", &x, &y);
    printf("x=%d, y=%d\n", x, y);
    printf("MAX number=%d\n", MAX(x, y));
    printf("add result=%d\n", add(x, y));
    
    //test const, goobal value, while
    const int num = 10;
    int a, b, i, t;
    a = 0;
    b = 1;
    i = 1;
    printf("fibonacci sequence:%d %d", a, b);
    while (i < num)
    {
        t = b;
        b = a + b;
        printf(" %d", b);
        a = t;
        i = i + 1;
    }
    printf("\n");

    //test array, for, if
    int array[N];
    for(int j = 0, k = 0; j < 2 * N; j++)
    {
      if(j % 2 == 0)
      {
         array[k] = j;
         k++;
      }
    }
    printf("array:");
    for(int j = 0; j < N; j++)
      printf("%d ", array[j]);
    printf("\n");

    return 0;
}