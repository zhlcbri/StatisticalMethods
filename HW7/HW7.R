# P1
# a
pnorm(-1, mean = -2, sd = 3, lower.tail = F)
pnorm(1/3, mean = 0, sd = 1, lower.tail = F)

# b
pnorm(7, mean = 1, sd = 2, lower.tail = T) - pnorm(0, mean = 1, sd = 2, lower.tail = T)
pnorm(3, mean = 0, sd = 1, lower.tail = T) - pnorm(-1/2, mean = 0, sd = 1, lower.tail = T)

# c
pnorm(2, 1, 3, F) + pnorm(-2, 1, 3, T)
pnorm(1/3, 0, 1, F) + pnorm(-1, 0, 1, T)


# P2
# a
pnorm(83, 65, 7.7, T)

# b
pnorm(48, 50, 5, T)


# P5
pnorm(16, 15.53, 0.2, F)


# R2
x <- rnorm(10000, 0, 1)
z <- x^2
mean(z)
var(z)

# R3
# sd(z)^2
# hist(x)
hist(z, probability = T, ylim = c(0,2))
lines(density(z), col = "red")

qnorm(0.975)
