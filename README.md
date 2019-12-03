# Network-Entropy-Fisher-Information
R code for computing Normalized Network Entropy and Normalized Network Fisher Information

The formulas used in the code are prescirbed by 
Freitas, C. G., Aquino, A. L., Ramos, H. S., Frery, A. C., & Rosso, O. A. (2019). A detailed characterization of complex networks using Information Theory. Scientific reports, 9(1), 1-12.

#### Function usage
graph_entropy_fisher(adjacency matrix)

#### Input
Input is adjacency matrix of the network

#### Output
Output is a vector containing Normalized Network Entropy and Normalized Network Fisher Information

#### Normalized Network Entropy 

 <img src="https://cdn.mathpix.com/snip/images/nlm_VMziLkvhzBNWAW9KHkEh7n2JoJVrgaqaR8_QWYs.original.fullsize.png" width="300" height="80">
where 
k is the degree and N is the number of nodes

#### Normalized Network Fisher Information

<img src="https://cdn.mathpix.com/snip/images/Ft4zO1N097baDs5yWtucEwT5eHxbtBOc93OEJBBditM.original.fullsize.png" width="150" height="80">
where

<img src="https://cdn.mathpix.com/snip/images/iBWiSVOcozdZxk2GpZuNWPoaoUWUlU_nd0eGAShHRhY.original.fullsize.png" width="300" height="100">
and

<img src="https://cdn.mathpix.com/snip/images/G6u0lre4ks5KEtbGYXRJ0US36FwSOcZmER-v89dk4ko.original.fullsize.png" width="230" height="80">

k is the degree and N is the number of nodes

###### Note: If you find any discrepancies in code kindly notify


