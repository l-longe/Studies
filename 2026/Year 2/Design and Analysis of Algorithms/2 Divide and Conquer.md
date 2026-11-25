# The Divide and Conquer Paradigm

- Merge sort is an algorithm that follows the **divide and conquer** design method.
- Consider a problem with input size n.
- f n is small enough, (**base case**), solve the problem directly, either trivially, or with brute force. else:
  - **Divide** the problem int *a* subproblems of size *n/b*, where a >=1 and b>1.
  - **Conquer** the problems by solving them recursively 
  - **Combine** the solutions of the subproblems 

Merge sort: splits the array in half, sorts each half recursively, then merges the two sorted halves in linear time.

## Notation recap
- n is the size of the input, aka ****the number of elements in the array**.
- T(n) is the time the algorithm takes on an input of size n. It's a **function**.  T(8) is the time for 8 elements.
- 0(n) reads as theta  of n, and means that it grows proportionally to n. We ignore constants and small details. If an algorithm takes 3n+5 steps, or 100n steps, both are 0(n), meaning "roughly linear".
  - 0(n^2) = it grows like n squared, (double the input, about 4 times the time)
  - 0(n log n) = a bit more than linear, and much better than nlogn
  - 0(1) means constant time, regardless of input size

## Recurrences

- To get the running time, you write a recurrence that mirrors the structure.

- T(n)=a*T(n.c)+f(n)
    - a = how many recursive calls you make
    - n/b = the size of each subproblem
    - the work done outside the recursion (dividing and combining)
    
- For merge sort, that's two calls on halves, plus a linear merge:
    - T(n)=2T(n/2)+0(n)
    
    
## The Master Theorem

- The master theorem solves most recurrence of that form without any real work. 
- Compare f(n) to n^(log_b a), which measures how much work the recursion tree does at its leaves:

1. f(n) is smaller than n^(log_b a) = T(n)=0(n^(log_ba))
2. f(n) is the same order as n^(log_b a) = T(n)=0(n^(log_b a)*log n)
3. f(n) is larger than n^(log_b a) = T(n)=0(f(n))

- Merge sort: a=2, b=2, therefore n^log2(2) = n. Since f(n)=0(n) matches, it's Case 2 giving 0(nlogn).
- Binary Search: T(n)=T(n/2)+0(1). a=1, b=2, so n^(log2(1))=n^0=1, which makes f(n)=0(1). Case 2 again, 00(logn)

## Quicksort

- Quicksort is divide and conquer too, but with a twist. 
- The work is in the divide step, and the combine step is free. The catch is that the subproblem size depends on when the pivot lands.
