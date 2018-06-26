#include <stdio.h>
struct point{
  int x1;
  int y1;
}
 int main(){
   struct point rect1,rect2;
   scanf("%d%d",rect1.x1,rect1.y1);
   scanf("%d%d",rect2.x1,rect2.y1);
   int t1=rect1.x1,t2=rect1.y1;
   rect1.x1=rect2.x1;
   rect2.x1=t1;
   rect1.y1=rect2.y1;
   rect2.y1=t2;
   printf("%d%d",rect1.x1,rect1.y1);
   printf("%d%d",rect2.x1,rect2.y1);
 }
