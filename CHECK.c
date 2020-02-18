#include <stdio.h>
#include "lagrange_interpolation_tools.h"

#define N 200
#define NT 10
#define ND 2

int main(void){
   double xi[(NT+1)];
   double x;
   int i, it;
   FILE *fp;
   char outputfilename1[] = "out.dat";
   char inputfilename[] = "sampledata/X2pX.dat";
   char outputfilename2[] = "lagint.dat";
   double a[(NT+1)];
   double dummy, tmp;
   gauss_lobatto_points(xi, NT);

   // for func_hk.pdf
   fp = fopen(outputfilename1, "w");
      for(i=0; i<=N; i++){
         x = -1.0+2.0/N*i;
         fprintf(fp, "%lf", x);
         for(it=0; it<=NT; it++){
            fprintf(fp, " %lf", hk(0, it, x, xi, ND, NT));
         }
         fprintf(fp, "\n");
      }
   fclose(fp);

   // for intplt_samp.pdf
   fp = fopen(inputfilename, "r");
      for(it=0; it<=NT; it++){
         fscanf(fp, "%lf %lf", &dummy, &a[it]);
      }
   fclose(fp);
   fp = fopen(outputfilename2, "w");
      for(i=0; i<=N; i++){
         x = -1.0+2.0/N*i;
         tmp = 0.0;
         for(it=0; it<=NT; it++){
            tmp += a[it]*hk(0, it, x, xi, ND, NT);
         }
         fprintf(fp, "%lf %lf\n", x, tmp);
      }
   fclose(fp);
   return(0);
}
