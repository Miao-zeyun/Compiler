/*
LLVM IR编程
1913632 曾兀 1910842 苗泽昀

使用迭代法计算pi
pi/2 = 1 + 1/3 + (1/3)*(2/5) + (1/3)*(2/5)*(3/7) + ……
将加和各项视为一个数组，则递推关系为：
  A0 = 1
  An = An-1 * ( n / (2 * n + 1) )  n=1，2，3，……
*/

/*
使用sysY库函数进行标准输出
编译命令：clang test.ll sylib.c -o test
*/
#include "sylib.h"

float tempresult[10] = {}; //记录迭代法计算的中间结果

float ComputePi()
{
    //pi,term(迭代法数组项),n(循环变量)初始化
	float pi = 0, term = 1;
	int n = 0;
	while (n < 50 && term >= 0.00000001f)
	{
    //按照迭代法计算pi
    //若迭代超过50次或迭代时增加的数值小于1*10-8次则停止
		pi += term;
		if (n % 5 == 0) //每迭代5次记录1次中间结果
			tempresult[n / 5] = 2 * pi;
		n++;
		term = term * n / (2 * n + 1);
	}
	return 2 * pi;
}

int main()
{
    //计算并输出pi
	float pi = ComputePi();
	putf("%f", pi);
	putch('\n');

    //输出计算pi的过程中产生的中间结果
	const int n = 10;
	int i = 0;
	while (i < n)
	{
		putf("%f", tempresult[i]);
		putch('\n');
		i++;
	}
	return 0;
}