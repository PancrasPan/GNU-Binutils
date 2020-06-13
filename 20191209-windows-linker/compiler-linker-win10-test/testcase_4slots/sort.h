#ifndef SORT_H_INCLUDED
#define SORT_H_INCLUDED

#define INPUTERROR -1
#define SORTERROR -2

extern int qsort(int* array, int start, int end);
extern int partition(int* array, int start, int end);
extern int partition_1(int* array, int start, int end);
extern int merge_sortR(int* array, int start, int end);
extern int merge_sort(int* Array, int start, int end);
extern int heapsort(int*, int, int);
extern int binary_insert(int*, int, int);

#endif //SORT_H_INCLUDED
