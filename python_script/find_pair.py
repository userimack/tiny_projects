# Program to find the pairs of a number in a given array

def find_pair(array,result):
    n = len(array)
    tmp = 0;

    for i in xrange(n):
        for j in xrange(i+1,n):
            if array[i] + array[j] == result :
            	tmp+=1
                print "%d: [%d]=%d - [%d]=%d"%(tmp,i,array[i],j,array[j])
                
    return tmp;
