
#Q1
setwd("C:\\Users\\SANDEEPA\\OneDrive - Sri Lanka Institute of Information Technology\\Desktop\\Lab Sheet 05")
DeliveryTimes <- read.table("Exercise - Lab 05.txt", header = TRUE,sep = "", stringsAsFactors = FALSE)

head(DeliveryTimes)

#Q2
names(DeliveryTimes) <- c("DeliveryTimes")
hist(DeliveryTimes$DeliveryTime,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightgreen",
     border = "black")


#Q4
names(DeliveryTimes)
x <- as.numeric(DeliveryTimes[[1]])
hist(x,
     main = "Histogram for Delivery Times",
     xlab = "Delivery Time (minutes)",
     breaks = seq(20, 70, length.out = 10),
     right = FALSE,
     col = "lightgreen",
     border = "black")

h <- hist(x, breaks = seq(20, 70, lenght.out = 10),right = FALSE, plot = FALSE)
cf <- cumsum(h$counts)

plot(h$breaks[-1], cf, type = "o",
     main = "Ogive (Cumulative Frequency Polygon",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     pch = 16)
points(h$breaks[1], 0, pch = 16)
lines(c(h$breaks[1], h$breaks[-1], c(0, cf)))