#include <stdio.h>
struct point{
  int x1;
  int y1;
}
void swap(struct point *r1,struct point *r2){
  int t1=(*r1).x1,t2=(*r1).y1;
  (*r1).x1=(*r2).x1;
  (*r2).x1=t1;
  (*r1).y1=(*r2).y1;
  (*r2).y1=t2;
}
 int main(){
   struct point rect1,rect2;
   scanf("%d%d",rect1.x1,rect1.y1);
   scanf("%d%d",rect2.x1,rect2.y1);
   swap(&rect1,&rect2);
   printf("%d%d",rect1.x1,rect1.y1);
   printf("%d%d",rect2.x1,rect2.y1);
 }
