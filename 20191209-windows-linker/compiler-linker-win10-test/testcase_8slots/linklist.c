typedef struct _LNode{
	int key;
	struct _LNode* next;
}LNode, *LinkList;

#define NULL 0

int main()
{
	LNode L1,L2;
	LinkList p = &L1;
	LinkList q = &L2;

	p->key = 1;
	q->key = 2;
	p->next = q;
	q->next = NULL;

	while(p->next){
		p->key++;
		p = p->next;
	}

	return q->key;
}