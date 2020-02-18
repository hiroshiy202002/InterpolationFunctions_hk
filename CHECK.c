#include <stdio.h>
#include "lagrange_interpolation_tools.h"

#define N 200
#define NT 8
#define ND 2

int main(void){
   double xi[(NT+1)];
   double x;
   int i, it;
   gauss_lobatto_points(xi, NT);
   for(i=0; i<=N; i++){
      x = -1.0+2.0/N*i;
      printf("%lf", x);
      for(it=0; it<=NT; it++){
         printf(" %lf", hk(0, it, x, xi, ND, NT));
      }
      printf("\n");
   }
   return(0);
}
