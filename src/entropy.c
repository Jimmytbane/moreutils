#include<stdio.h>
#include<stdlib.h>

int main()
{
  printf("Linux entropy --> ");
  fflush(stdout);
  system("cat /proc/sys/kernel/random/entropy_avail");
}
