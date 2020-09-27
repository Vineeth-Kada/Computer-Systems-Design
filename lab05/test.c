#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main(){
for(int i=0; i<8; i++)
{  
	printf("Xor3Way(a=X[%d],b=Y[%d],c=b%d,out=out[%d]);\n",i,i,i,i);
    printf("And(a=notx%d, b=b%d, out=t%d1);\n",i,i,i);
	printf("And(a=notx%d, b=Y[%d], out=t%d2);\n",i,i,i);
	printf("And(a=Y[%d], b=b%d, out=t%d3);\n",i,i,i);
	printf("Or3Way(a=t%d1,b=t%d2,c=t%d3,out=b%d);\n\n",i,i,i,i+1);
}
return 0;
}