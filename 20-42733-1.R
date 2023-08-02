library(factoextra)
my_data <- read.csv("C:/Users/Asus/Desktop/ds/wholesale_customers_data.csv",header = TRUE, sep = ",")
summary(my_data)

colSums(is.na(my_data))
my_data <- my_data[, -c(1,2)]

scaled_data <- scale(my_data)

set.seed(123)
fviz_nbclust(scaled_data, kmeans, method = "wss")
fviz_nbclust(scaled_data ,kmeans, method = "gap_stat")

k <- 4
km <- kmeans(scaled_data, k)

km
fviz_cluster(km, data = scaled_data, geom = "point", ellipse.type = "norm")

