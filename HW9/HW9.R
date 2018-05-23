# P1
pnorm(79.5, 78.74, 5.3/sqrt(200), F)

# P2
pnorm(59.4, 62, 7/sqrt(40), T)

# P3
pnorm(2500, 2352, 40, F)

# P5
# a
x <- runif(100000, 0, 4)
hist(x)
mean(x)
sd(x)

# b
y <- replicate(100000, mean(runif(300, 0, 4)))
hist(y)
mean(y)
sd(y)

# c
z <- replicate(100000, max(runif(2, 0, 4)))
hist(z)
mean(z)
sd(z)

# R1
nums <- c(883, 778, 682, 611, 1051, 578, 774, 772, 
          573, 748, 851, 723, 816, 796, 711, 599, 
          781, 796, 820, 696, 748, 797, 809)
n <- length(nums)
mean <- mean(nums)
sd <- sd(nums)

z <- qnorm(0.95, mean, sd, F)
se = sd / sqrt(n)

mean + z * se
mean - z * se




