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

