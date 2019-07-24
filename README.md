# Banking

### A sample net banking is the outcome of this code.

The main function first gets triggered when the program is called which inturn triggers the newScreen function.
```C
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
```
The new screen function is used to adjust the title to the centre and it varies according to the resolution and the screen size.

The Welcome screen contains 2 options.
* Log-in
* Register
Input is given as option number by the user.

Once Log-in option is pressed,
```C
login()
```
function is triggered.

After logging in with proper credentials, two options are available:-
* Balance enquiry
* Transfer 

```C
void account(){
	int inp;
	newScreen();
	printf("\033[32mWELCOME %s!\033[0m\n\n\n\n",user[j].username);
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
```

Transfer is made based on user name and to perform a ssuccessful transaction, you need to enter the correct pin created during registration.

Transfer is made based on user name and to perform a ssuccessful transaction, you need to enter the correct pin created during registration.

Options for going back are simultaneously present.
