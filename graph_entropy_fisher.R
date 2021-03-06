# Function to compute normalized graph entropy and normalized graph fisher information of a graph
# INPUT: A symmetric adjacency matrix of a graph
# OUTPUT: A vector containing normalized graph entropy and normalied graph fisher information 
# USAGE: graph_entropy_fisher(adjacency matrix)

graph_entropy_fisher<-function (adj_mat){

# Compute number of nodes
N<-length(adj_mat[,1])

# Compute normalized graph entropy (Equation 4 from the reference article)
normalized_graph_entropy<-(1/(N*(log(N-1))))*sum(log(rowSums(adj_mat)))  
  
# Generate random walker path from the adjacency matrix (Equation 1 from the reference article)
rand_walk_mat<-matrix(0,nrow=N,ncol=N)
for (i in 1:N){
  rand_walk_mat[i,]<- adj_mat[i,]/sum(adj_mat[i,])
}

# Compute normalized graph fisher information (Equation 5 and Equation 6 from the reference article)
temp<-matrix(0,nrow=1,ncol=N)
node_information<-matrix(0,nrow=1,ncol=N)

for (i in 1:N){
  for (j in 1:(N-1)){
    if (i !=j){
      temp[1,j]<-(sqrt(rand_walk_mat[i,j+1])-sqrt(rand_walk_mat[i,j]))^2  
    }
    node_information[1,i]<-0.5*(sum(temp))
  }
}

normalized_graph_fisher_information<-sum(node_information)/N

return(c(normalized_graph_entropy, normalized_graph_fisher_information))
}
