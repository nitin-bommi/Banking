#include <stdio.h>
#include <stdlib.h>
#include <string.h>

//TODO :- To clear the screen.

void clrscr() {
    system("@cls||clear");
}


//TODO :- Every time the user provides an input, call the new screen.

void newScreen() {
	clrscr();
	int width = 132;
	char str[] = "\033[31;1;51;4mBANKING\033[0m\n";
	int length = sizeof(str) - 1;
	int pad = (length >= width) ? 0 : (width - length) / 2;
	printf("%*.*s%s\n", pad, pad, " ", str);
	for(int i=0; i<10; i++){
		printf("\n");
	}
}


//TODO :- Control the log-in part.
void login(){
	newScreen();
	printf("Login");
}


//TODO :- Control the resgistering part.
void reg(){
	newScreen();
	printf("Register");
}


//TODO :- What it has to display on welcome screen.

void welcome() {
	newScreen();

	printf("\t\t\033[34mWELCOME TO BANKING!\033[0m\n");
	printf("\n\n\n\033[33m1 -> LOG IN\n\n2 -> REGISTER\033[0m\n\n\n\n");

	int option;
	printf("\033[35mENTER YOUR OPTION :- \033[0m");
	scanf("%d",&option);

	switch(option) {
		case 1:
			login();
			break;
		case 2:
			reg();
			break;
		default:
			welcome();
	}
}


int main() {

	//TODO :- The first function to be called. And some main screen properties which need not be repeated again.
	welcome();

	return 0;
}
