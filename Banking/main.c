#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

struct userDetails {
	char username[10];
	char password[10];
	int pin;
	int balance;
}user[5];

int j;

void welcome();
void account();


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
	for(int i=0; i<7; i++){
		printf("\n");
	}
}


//TODO :- Quit function.

void quit(){
	char ans[5];
	newScreen();
	printf("\033[34mARE YOU SURE YOU WANT TO EXIT - \033[0m\n");
	scanf("%s",ans);
	if (tolower(ans[0])=='y'){
		printf("\n\n\n\n\033[35mTHANK YOU\033[0m\n\n");
	} else {
		welcome();
	}
}


//TODO :- Balance function.

void balance(){
	newScreen();
	char ans[5];
	printf("\033[34mCURRENT BALANCE - %d\033[0m\n\n\n",user[j].balance);
	printf("\033[34mGO BACK - \033[0m");
	scanf("%s",ans);
	if(tolower(ans[0])=='y'){
	    account();
	}
}


//TODO :- Transfer account.

void transfer(){
	newScreen();
	char rec[10];
	int amount,code;
	printf("\033[33mENTER THE USERNAME OF THE RECIPENT - \033[0m");
	scanf("%s",rec);
	printf("\n\033[33mENTER THE AMOUNT TO BE TRANSFERED - \033[0m");
	scanf("%d",&amount);
	for(int z=0; z<5; z++){
		if(strcmp(rec,user[z].username)==0){
			printf("\n\033[33mENTER THE PIN TO PERFORM TRANSACTION - \033[0m");
			scanf("%d",&code);
			if(code==user[j].pin){
				user[z].balance+=amount;
				user[j].balance-=amount;
				printf("\n\033[33mTRANSACTION SUCCESSFUL\033[0m");
				break;
			}
		}
	}
	account();
}


//TODO :- Control the account part.

void account(){
	int inp;
	newScreen();
	printf("\033[34mWELCOME %s!\033[0m\n\n\n\n",user[j].username);
	printf("\033[34m1 -> BALANCE INQUIRY\033[0m\n\n");
	printf("\033[34m2 -> TRANSFER\033[0m\n\n\n\n");
	printf("\033[34m3 -> LOG OUT\033[0m\n\n\n\n");
	printf("\033[33mENTER YOUR CHOICE - \033[0m");
	scanf("%d",&inp);
	switch(inp){
		case 1:
			balance();
			break;
		case 2:
			transfer();
			break;
		case 3:
			welcome();
		default:
			account();
	}
}


//TODO :- Control the log-in part.

void login(){
	newScreen();
	char un[10], pwrd[10];
	printf("\033[31mENTER USERNAME - \033[0m");
	scanf("%s",un);
	printf("\033[31mENTER PASSWORD - \033[0m");
	scanf("%s",pwrd);
	for(j=0; j<5; j++){
		if(strcmp(un,user[j].username)==0 && strcmp(pwrd,user[j].password)==0){
			account();
			break;
		}
	}
}


//TODO :- Control the resgistering part.

void reg(){
	static int i=0;
	char ans[5];
	newScreen();
	printf("\033[33mENTER NEW USER NAME - \033[0m");
	scanf("%s",user[i].username);
	printf("\033[33mENTER NEW PASSWORD - \033[0m");
	scanf("%s",user[i].password);
	printf("\033[33mENTER NEW PIN - \033[0m");
	scanf("%d",&user[i].pin);
	user[i].balance = 100;
	i++;
	printf("\n\n\033[34mREGISTERED SUCCESSFULLY! YOU CAN NOW LOG IN\033[0m\n\n\n");
	printf("\033[34mDO YOU WANT TO LOGIN (Press any other key to go to the main screen) - \033[0m");
	scanf("%s",ans);
	if(tolower(ans[0])=='y'){
	    login();
	}
	else if(tolower(ans[0])=='n'){
	    quit();
	}
	else{
	    welcome();
	}
	return;
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
