#include <stdio.h>
#include "../lagrange_interpolation_tools.h"

#define N 10

int main(void){
   double x[N+1];
   int i;
   gauss_lobatto_points(x, N);
   for(i=0; i<=N; i++){
      printf("%lf %lf\n", x[i], x[i]*x[i]+x[i]);
   }
   return(0);
}
