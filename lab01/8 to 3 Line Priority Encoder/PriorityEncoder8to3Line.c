#include<stdio.h>
#include<stdlib.h>

int main(int argc, char **argv)
{
    int inCount=atoi(argv[2]);
    int outCount=atoi(argv[3]);
    char testName[100];
    sprintf(testName,"%s.tst",argv[1]);
    char cmpName[100];
    sprintf(cmpName,"%s.cmp",argv[1]);
    printf("%s\n",testName);
    FILE *fp=fopen(testName,"w");
    FILE *fc=fopen(cmpName,"w");

    fprintf(fp,"load %s.hdl, output-file %s.out, compare-to %s, output-list ",argv[1],argv[1],cmpName);
    for(int i=0; i<inCount; i++)
    {
        fprintf(fp,"x%d%%B3.1.3 ",i);
        fprintf(fc,"|  x%d   ",i);
    }
    for(int i=outCount-1; i>=0; i--)
    {
        fprintf(fp,"y%d%%B3.1.3 ",i);
        fprintf(fc,"|  y%d   ",i);
    }
    fprintf(fp,";\n\n");
    fprintf(fc,"|\n");

    int x[inCount];
    int p2=1;
    for(int i=0; i<inCount; i++)
        p2*=2;
    for(int i=p2-1; i>=1; i--)
    {
        int temp=i;
        for(int j=inCount-1; j>=0; j--)
        {
            x[j]=temp%2;
            temp/=2;
        }
        for(int j=0; j<inCount; j++)
        {
            fprintf(fp,"set x%d %d, ",j,x[j]);
            fprintf(fc,"|   %d   ",x[j]);
        }
        fprintf(fp,"eval, output;\n");
        int y[3];
        y[0]=(!x[0])&&(!x[1])&&(!x[2])&&(!x[3]);
        y[1]=((!x[0])&&(!x[1])&&(x[2]||x[3]))||((!x[0])&&(!x[1])&&(!x[2])&&(!x[3])&&(!x[4])&&(!x[5]));
        y[2]=(((!x[0])&&(!x[1])&&(!x[2])&&(!x[3])&&(!x[4]))&&(x[5]||(!x[6])))||((!x[0])&&(x[1]||(x[3]&&(!x[2]))));
        for(int j=0; j<outCount; j++)
        {
            fprintf(fc,"|   %d   ",y[j]);
        }
        fprintf(fc,"|\n");
    }
    fclose(fp);
    fclose(fc); 
}
