#include <stdio.h>
struct point{
  int x;
  int y;
  int x2;
  int y2;
}
int main(){
  struct point p[3];
  int sum=0;
  for(int i=0;i<3;i++){
    scanf("%d %d\n",&p[i].x,&p[i].y,&p[i].x2,&p[i].y2);
    int area=(p[i].x2-p[i].x)*(p[i].y2-p[i].y);
    sum+=area;
  }
  printf("%d",sum);
}
