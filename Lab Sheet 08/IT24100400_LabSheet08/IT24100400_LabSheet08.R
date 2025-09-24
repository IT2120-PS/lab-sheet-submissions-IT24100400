setwd("C:\\Users\\SANDEEPA\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\IT24100400_PS_Lab 08")

data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

# Question 01
colnames(data)[1] <- "Weights"
weights <- data$Weights

# Population mean
popmn <- mean(weights)
popmn

# Population variance 
popvar <- sum((weights - mean(weights))^2) / length(weights)
popvar

# Population standard deviation
pop_sd <- sqrt(popvar)
pop_sd


#Question 02
set.seed(123)   
samples <- 25
n <- 6

sample_means <- numeric(samples)
sample_sds   <- numeric(samples)

for (i in 1:samples) {
  s <- sample(weights, n, replace = TRUE)  
  sample_means[i] <- mean(s)               
  sample_sds[i]   <- sd(s)                 
}
print(sample_means)
print(sample_sds)

#Question 03
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means   <- sd(sample_means)

print(mean_of_sample_means)
print(sd_of_sample_means)




