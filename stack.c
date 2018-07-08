#include<stdio.h>

typedef struct _node{
    char val;
    struct _node *next;
}node;
node *stack='\0';
node* makeNode(char c){//Explain its use.
    node *nd=malloc(sizeof(node));
    nd->next='\0';
    nd->val=c;
    return nd;
}

node* push(char c){
    node *nd=makeNode(c);
    nd->next=stack;
    return stack=nd;
}

node* pop(){
    node *nd=stack;
    stack=stack->next;
    return nd->val;
}

int main(void) {
    char s[15];
	scanf("%s",s);
	int i,n=strlen(s);
	for(i=0;i<n;++i)
	    push(s[i]);

    while(stack)
        printf("%c",pop());
    
	return 0;
}
