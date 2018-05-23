# Data are supposed to be 5000 random numbers
# from a exponential distribution with lambda = 3

# Verify if this is true

x <- yoshinums$x

n <- length(x) # 5000
mean <- mean(x) # 0.3386126
sd <- sd(x) # 0.3291177

z <- qnorm(0.95, mean, sd, lower.tail = T) # 0.879963

se = sd/sqrt(n) # 0.004654427

mean + z * se # 0.3427085
mean - z * se # 0.3345167
