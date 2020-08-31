#include<stdio.h>
#include<math.h>

int main(){

FILE *ptrtst;
FILE *ptrcmp;
ptrtst = fopen("PriorityEncoder8to3Line.tst","w");
ptrcmp = fopen("PriorityEncoder8to3Line.cmp","w");
int max_power = (int)pow(2,7);
int Binary[max_power][7];

for(int i=0; i<max_power; i++){
    int a=i;
    for(int j=6; j>=0; j--){
        if(a==0) Binary[i][j]=0;
        else{
            Binary[i][j] = a%2;
            a = a/2;
        }
    }
}

fprintf(ptrcmp,"|  x0   |  x1   |  x2   |  x3   |  x4   |  x5   |  x6   |  x7   |  y2   |  y1   |  y0   |\n");
fprintf(ptrtst,"load PriorityEncoder8to3Line.hdl,\
\noutput-file PriorityEncoder8to3Line.out,\
\ncompare-to PriorityEncoder8to3Line.cmp,\
\noutput-list ");
fprintf(ptrtst,"x0%%B3.1.3 x1%%B3.1.3 x2%%B3.1.3 x3%%B3.1.3 x4%%B3.1.3 x5%%B3.1.3 x6%%B3.1.3 x7%%B3.1.3 y2%%B3.1.3 y1%%B3.1.3 y0%%B3.1.3;\n\n");

int x=0;
for(int k=1;k<=8;k++){

    for(int i=0,l=1; i<max_power; i++){
        for(l=1;k>1&&l<=k-1; l++){
                fprintf(ptrcmp,"|   0   ");
                fprintf(ptrtst,"set x%d %d, ",l-1,0);
        }
        fprintf(ptrcmp,"|   1   |");
        fprintf(ptrtst,"set x%d %d, ",l-1,1);
        for(int j=k-1; j<7; j++){
            fprintf(ptrcmp,"   %d   |",Binary[i][j]);
            fprintf(ptrtst,"set x%d %d, ",j+1,Binary[i][j]);
        }
        for(int y=4;y<=6;y++) fprintf(ptrcmp,"   %d   |",Binary[x][y]);
        fprintf(ptrcmp,"\n");
        fprintf(ptrtst,"eval, output;\n");
    }
    x++;
    max_power = max_power/2;

}

// Invalid Case
fprintf(ptrtst,"set x0 0, set x1 0, set x2 0, set x3 0, set x4 0, set x5 0, set x6 0, set x7 0, eval, output;\n");
fprintf(ptrcmp,"|   0   |   0   |   0   |   0   |   0   |   0   |   0   |   0   |   *   |   *   |   *   |");

fclose(ptrcmp);
fclose(ptrtst);

return 0;

}

