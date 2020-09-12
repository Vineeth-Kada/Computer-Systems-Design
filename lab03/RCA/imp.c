#include<stdio.h>
#include<stdlib.h>
#include<math.h>
#include<string.h>

int main(){
    FILE *ptr;
    ptr = fopen("test.txt","w");
    /* for(int i=0; i<16; i++){
        fprintf(ptr,"Xor(a=a[%d], b=b, out = out[%d]);\n",i,i);
    } */

    int i=0;
        fprintf(ptr,"And(a=X[%d], b=Y[%d], out = l%d);\n",i,i,i);
        fprintf(ptr,"And(a=X[%d], b=c0, out = m%d);\n",i,i);
        fprintf(ptr,"And(a=Y[%d], b=c0, out = n%d);\n",i,i);
        fprintf(ptr,"Or3bit(a=l%d, b=m%d, c=n%d, out = c%d);\n",i,i,i,i+1);
        fprintf(ptr,"Xor3bit(a=X[%d],b=Y[%d],c=c0, out=out[%d]);\n\n",i,i,i);
    for(int i=1;i<16;i++){
        fprintf(ptr,"And(a=X[%d], b=Y[%d], out = l%d);\n",i,i,i);
        fprintf(ptr,"And(a=X[%d], b=c%d, out = m%d);\n",i,i,i);
        fprintf(ptr,"And(a=Y[%d], b=c%d, out = n%d);\n",i,i,i);
        fprintf(ptr,"Or3bit(a=l%d, b=m%d, c=n%d, out = c%d);\n",i,i,i,i+1);
        fprintf(ptr,"Xor3bit(a=X[%d],b=Y[%d],c=c%d,out=out[%d]);\n\n",i,i,i,i);
    }
return 0;
}