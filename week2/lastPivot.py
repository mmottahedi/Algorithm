import pandas as pd

dat = pd.read_table('_32387ba40b36359a38625cbb397eee65_QuickSort.txt',
                    names=['number'])
l = dat.values.flatten()

def quicksort(A,begin,end) :
	count = 0
	if end - begin <= 1:
		return 0
	else :
		#swap done here
		A[begin], A[end-1] = A[end-1] , A[begin]
		split = partition(A,begin,end)
		count = end - begin - 1
		lc = quicksort(A,begin,split)
		rc = quicksort(A,split+1,end)
		return count + lc + rc


def partition(A,begin,end) :
	pivot = A[begin]
	i = begin + 1

	for j in range(begin+1,end) :
		if A[j] < pivot :
			A[i], A[j] = A[j], A[i]
			i = i + 1

	A[i-1], A[begin] = A[begin], A[i-1]
	return i-1

#use any array like below to sor
print quicksort(l,0,len(l))
