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

$$\mathscr{H}=\frac{1}{N} \sum_{i=1}^{N} \mathscr{H}^{(i)}=\frac{1}{N \ln (N-1)} \sum_{i=1}^{N} \ln k_{i}$$
where 
$k$ is the degree and $N$ is the number of nodes

#### Normalized Network Fisher Information

$$\mathscr{F}=\frac{1}{N} \sum_{i} \mathscr{F}^{(i)}\left[P^{(i)}\right]$$
where

$$ \mathscr{F}^{(i)}\left[\boldsymbol{P}^{(i)}\right]=\frac{1}{2} \sum_{j=1}^{N-1}\left[\sqrt{p_{i \rightarrow j+1}}-\sqrt{p_{i \rightarrow j}}\right]^{2} $$

and

$$
p_{i \rightarrow j}=\left(\begin{array}{ll}
0, & \text { for } a_{i j}=0 \\
1 / k_{i}, & \text { for } a_{i j}=1
\end{array}\right.
$$


$a_{i j}$ is the  adjacency matrix values, $k$ is the degree and $N$ is the number of nodes

###### Note: If you find any discrepancies in code kindly notify


