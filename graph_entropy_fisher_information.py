import numpy as np
import math

def graph_entropy_fisher(adj_mat):
    # Compute number of nodes
    N = adj_mat.shape[0]

    # Compute normalized graph entropy
    row_sums = adj_mat.sum(axis=1)
    normalized_graph_entropy = (1 / (N * math.log(N - 1))) * np.sum(np.log(row_sums))

    # Generate random walker path from the adjacency matrix
    rand_walk_mat = np.zeros((N, N))
    for i in range(N):
        rand_walk_mat[i, :] = adj_mat[i, :] / np.sum(adj_mat[i, :])

    # Compute normalized graph fisher information
    temp = np.zeros(N)
    node_information = np.zeros(N)
    for i in range(N):
        for j in range(N - 1):
            if i != j:
                temp[j] = (math.sqrt(rand_walk_mat[i, j+1]) - math.sqrt(rand_walk_mat[i, j])) ** 2
        node_information[i] = 0.5 * np.sum(temp)

    normalized_graph_fisher_information = np.sum(node_information) / N

    return normalized_graph_entropy, normalized_graph_fisher_information

# Example usage
# Ensure you have an adjacency matrix as a numpy array before calling this function
# adj_mat = np.array([[0, 1, 1], [1, 0, 1], [1, 1, 0]])
# print(graph_entropy_fisher(adj_mat))