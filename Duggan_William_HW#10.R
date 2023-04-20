# Initialize the data and centers
X <- matrix(c(5.9, 3.2, 4.6, 2.9, 6.2, 2.8, 4.7, 3.2, 5.5, 4.2, 5.0, 3.0, 4.9, 3.1, 6.7, 3.1, 5.1, 3.8, 6.0, 3.0), ncol = 2, byrow = TRUE)
centers <- matrix(c(6.2, 3.2, 6.6, 3.7, 6.5, 3.0), ncol = 2, byrow = TRUE)

# Perform k-means clustering
set.seed(123)
k <- 3
kmeans_result <- kmeans(X, k, centers = centers, nstart = 1)

# Print the results
cat("1. The center of the first cluster is: ", round(kmeans_result$centers[1, ], 3), "\n")
cat("2. The center of the second cluster is: ", round(kmeans_result$centers[2, ], 3), "\n")
cat("3. The center of the third cluster is: ", round(kmeans_result$centers[3, ], 3), "\n")
cat("4. The clusters converge after ", kmeans_result$iter, " iterations.\n")

# Visualizing the clusters
library(cluster)
clusplot(x = X,
         clus     = kmeans_result$cluster,
         lines    = 0,
         color    = TRUE,
         labels   = 2,
         main     = "K-means clustering")

         