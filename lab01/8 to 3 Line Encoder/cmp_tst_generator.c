#include<stdio.h>
#include<math.h>

int main(){

FILE *ptrtst;
FILE *ptrcmp;
ptrtst = fopen("Encoder8to3Line.tst","w");
ptrcmp = fopen("Encoder8to3Line.cmp","w");
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
fprintf(ptrtst,"load Encoder8To3Line.hdl,\
\noutput-file Encoder8To3Line.out,\
\ncompare-to Encoder8To3Line.cmp,\
\noutput-list ");
fprintf(ptrtst,"x0%%B3.1.3 x1%%B3.1.3 x2%%B3.1.3 x3%%B3.1.3 x4%%B3.1.3 x5%%B3.1.3 x6%%B3.1.3 x7%%B3.1.3 y2%%B3.1.3 y1%%B3.1.3 y0%%B3.1.3;\n\n");


for(int k=1;k<=8;k++){

    for(int l=0; l<k-1; l++){
        fprintf(ptrcmp,"|   0   ");
        fprintf(ptrtst,"set x%d 0, ",l);
    }
    fprintf(ptrcmp,"|   1   |");
    fprintf(ptrtst,"set x%d 1, ",k-1);
    for(int l=k; l<8; l++){
        fprintf(ptrcmp,"   0   |");
        fprintf(ptrtst,"set x%d 0, ",l);
    }
    for(int m=4; m<7; m++){
        fprintf(ptrcmp,"   %d   |",Binary[k-1][m]);
    }

    fprintf(ptrcmp,"\n");
    fprintf(ptrtst,"eval, output;\n");
}

for(int k=1;k<=8;k++){
    for(int j=1; j<max_power; j++){
        for(int l=1; l<k; l++){
            fprintf(ptrcmp,"|   0   ");
            fprintf(ptrtst,"set x%d 0, ",l-1);
        }
        fprintf(ptrcmp,"|   1   |");
        fprintf(ptrtst,"set x%d 1, ",k-1);

        for(int i=k-1; i<7; i++){
            fprintf(ptrcmp,"   %d   |",Binary[j][i]);
            fprintf(ptrtst,"set x%d %d, ",i+1,Binary[j][i]);
        }
        fprintf(ptrcmp,"   *   |   *   |   *   |\n");
        fprintf(ptrtst,"eval, output;\n");
    }
    max_power = max_power/2;
}


fclose(ptrcmp);
fclose(ptrtst);

return 0;

}

