//This c code for printing 9 multiples
/* the output 
1 2 3 4 5 6 7 8 9
2 4 6 8 10 12 14 16 18
......
9 18 27 ............ 81 */
#include<stdio.h>
void main()
{
int i,j,count=0;
for(i=1;i<=9;i++)
{
print("%d ",i*count);
if(i==9)
{
count++;
i=1;
continue;
}
if(count>9)
break;
}
getch();
}
