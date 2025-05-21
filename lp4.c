#include<stdio.h>
#include<string.h>
#include<stdlib.h>
void main(){
string prod[3][10]={"A->aBa","B->bB","B->@"};
char first[3][5]={'a','b','@'};
char follow[3][5]={'$','a'};
for(int i=0;i<4;i++){
for(int j=0;j<4;j++){
printf("%c",prod[i][j]);
}printf("\n");}

for(int i=0;i<3;i++){
for(int j=0;j<3;j++){
printf("%c\n",first[i][j]);
}}

for(int i=0;i<3;i++){
for(int j=0;j<3;j++){
printf("%c",follow[i][j]);
}
}
printf("\n");
}
