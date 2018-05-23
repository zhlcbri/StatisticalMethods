library(moments)

# P2
nums <- c(0.5, 0.714, 0.667, 0.667, 0.667, 0.5, 0.757, 0.553, 0.5, 0.667)
n <- length(nums) # 10
mean <- mean(nums) # 0.6192
sd <- sd(nums) # 0.09668023

# create a 90% CI for the average dimension ratio of all current flags
t <- qt(0.95, df = n-1) * sd/sqrt(n) # 0.05604371

qt(0.95, 9) # 1.833113

CI_low <- mean - t # 0.5631563
CI_high <- mean + t # 0.6752437
CI_low
CI_high

# P3
n <- 126
mean <- 29.92
sd <- 7.5

miu <- 18.2
alpha <- 0.05

# t-distribution



# P4
a <- 5
s <- 2
n <- 20

# calculating CI from normal distribution
error_1 <- qnorm(0.95) * s/sqrt(n) # 0.7356009
left_1 <- a - error_1 # 4.264399
right_1 <- a + error_1 # 5.735601

qnorm(0.95)
qt(0.95, 22)

# calculating CI from t distribution
error_2 <- qt(0.95, df = n-1) * s/sqrt(n) # 0.7732917
left_2 <- a - error_2 # 4.226708
right_2 <- a + error_2 # 5.773292


# R1
n <- 5
data <- c()

f <- function(n, data) {
  
  for (i in 1:10000) {
    avg <- mean(rexp(n, 1/20))
    data <- c(data, avg)
  }
  
  plot(density(data), 
       main = paste("Average of", n, "random number in Exp(1/20)")
  )
  
  return(data)
}

data <- f(5, data)


# R2
# kurtosis value of perfectly normal distribution is 3
kurtosis(data) # 4.434022


# R3
for (i in 1:20) {
  n <- i * 5
  data <- c()
  
  if (n == 5 || n == 20
      || n == 50 || n == 100) {
    dev.new()
    res <- f(n, data)
    cat("n =", n, ",", "kurtosis:", kurtosis(res), '\n')
  }
}

# become roughly normal at n = 50





