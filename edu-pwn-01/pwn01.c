#include <stdio.h>
#include <string.h>

void win(void) {
    puts("flag{edu-pwn-bof}");
}

int main(void) {
    char buf[64];
    puts("Send your name:");
    gets(buf); /* vulnerable on purpose */
    printf("Hello, %s\n", buf);
    return 0;
}
