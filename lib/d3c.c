// WORK IN PROGRESS...
#include<stdio.h>
char * en(char text[],char pw[],int ty) {
	char l[200];
	strcpy(l,"");
	for (int i=0; text[i] != 0; i++){
		char t[20];
		sprintf(t,"%d;",text[i]);
		printf("%s\n",t);
		strcat(l,t);
		printf("---%s---",l);
	}
	return l;
}
//char de(char text,char pw,int ty) {
//
//}
int main(){
	printf("%s\n",en("test","test",0));
	return 0;
}