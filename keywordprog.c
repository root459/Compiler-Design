//write a program in to identify whether give string is keyword or not
#include<stdio.h>
#include<string.h>
void main(){
int flag=0;
char in[100];
char key[8][10]={"scanf","printf","int","double","char","float","try","catch"};
printf("Enter the string\n");
scanf("%s",in);
for(int i=0;i<8 ;i++){
if(strcmp(in,key[i])==0){
flag=1;
}}
if(flag==1){
printf("you enter a keyword\n");
}
else{
printf("you not enter any keyword\n");
}}