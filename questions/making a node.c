#include<stdio.h>

typedef struct _node{
    char val;
    struct _node *next;
}node;

node* makeNode(char c){//Explain its use.
    node *nd=malloc(sizeof(node));
    nd->next='\0';
    nd->val=c;
    return nd;
}

node* insertBack(node* start,char c){
    if(start){
        node *nd=start;
        while(nd->next){
            nd=nd->next;
        }
        nd->next=makeNode(c);
    }
    else
        start=makeNode(c);
    return start;
}


void print(node* nd){
    while(nd){
        printf("%c",nd->val);
        nd=nd->next;
    }
}

int main(void) {
    char s[15];
    node *start='\0';
	scanf("%s",s);
	int i,n=strlen(s);
	for(i=0;i<n;++i)
	{
	    start=insertBack(start,s[i]);
	}
	print(start);
	return 0;
}
