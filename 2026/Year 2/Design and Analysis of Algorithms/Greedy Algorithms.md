# Greedy Algorithms

- Choose the best thing out of the options right in front of you.

- The standard we aim for is if the argument is convincing to your boss, who's asking why your algorithm is correct.

## Why is greed good?

Why do I need to solve an optimisation problem?
    - optimal structure and greedy choice property
      - **Optimal structure**: optimal solutions can contain optimal solutions to subproblems, which show we can thing recursively
      - **Greedy choice property**: repeatedly taking greedy choices gives an optimal solution, which shows the algorithm is correct
      - **Greedy heuristic**: how do I make my greedy choices
      
## Algorithms

### Knapsack problems

- How can I make the best use of *space*?

```
Philip and Alessio have tired of their academic salaries and decide to rob the Louvre.
When they break in, they find there are n pieces of jewellery they can choose between.
They number them 0, 1, . . . , n − 1.
The piece of jewellery with number i weighs wi kilograms and has a resale value of
vi > 0 euros. Unfortunately, due to the capacity of their mechanical ladder the
maximum weight they can carry as they escape is C kilograms.
Philip and Alessio must quickly solve the following:
Problem: choose which pieces of jewellery to take, so that the total resale value
is maximised but the total weight is at most C kilograms.
```

### Scheduling problems
 
- How can I make the best use of a *resource*?

### Huffman coding

- A widely used lossless *data compression* algorithm - for zip, png, jpeg, and mp3.

- characters are encoded one character at a time. we imagine we are given:
  - a file with n characters
  - the frequency f of each distinct charachter ci
  
- the output should be a codebook
  - this assigns a binary string (codeword enc(cu) ) to each ci so that
  - we can decode from binary to og file
  - thebinary encoding is as short as possible
  
- we then encode a string by encoding the characters one by one
  
- compression ratio = length of og file / length of binary file


### Minimal spanning trees

- How can I optimaly *connect* all my nodes? Useful for networks and logistics, even image segmentation algorithms.


# Interval Scheduling

->test<- 


