#include <stdlib.h>
#include <stdio.h>
int main(){
#ifdef __GNUC__
#  include <features.h>
#  if __GNUC_PREREQ(4,7)
	printf("GNU GCC is new enough\n");
        exit(0);
#  else
        exit(1);
#  endif
#else
        exit(1);
#endif
}
