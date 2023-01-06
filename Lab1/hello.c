#include<stdio.h>

int main() 
{ 
   int a = 10; 
   int count = 0; 

   for(a=0; a<10; a++) 
   { 
     if(a==5) { count=count+1; } 
     else if(a >= 7) { count = a++; } 
     else { count = a--; } 
   }
   return 0;
}





// int main() {
//     int a, b, c;
//     b = 10;
//     c = 20;
//     a = b+c;

//     printf("a = %d\n", a);

//     //gcc -E hello.c > hello.i
//     //gcc -S -masm=intel hello.c
//     //as -o hello.o hello.s
//     //objdump M intel -o hello.o > hello.dump
//     //gcc -o hello hello.c

//     return 0;
// }