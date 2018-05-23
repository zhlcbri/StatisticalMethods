# R1
# randNums = runif(10000, 0, 4)
# randNums <- sample(0:4, 10000, replace = T)


randNums <- runif(10000, 0, 4)

poly <- function(x) {
  res <- 3*(x^2) + 4*x - 1
  return(res)
}

vals <- c()

for (i in 1:length(randNums)) {
  vals[i] <- poly(randNums[i])
}

mean(vals)

##################

nums <- runif(10000, 0, 4)

poly <- function(x) {
  res <- 3*(x^2) + 4*x - 1
  return(res)
}

v <- c()

for (i in 1:length(nums)) {
  v[i] <- poly(nums[i])
}

mean(v)

##################

myFunction <- function(nums) {
  vals <- c()
  for (i in 1:length(nums)) {
    vals[i] <- poly(nums[i])
  }
  return(mean(vals)) 
}

expectedVal <- myFunction(randNums) # returns 

######### Redo R1
vals <- c()

for (i in 1:10000) {
  randNum = sample(0:4, 1, replace = T)
  vals[i] <- poly(randNum)
}
mean(vals)

###################

# R2
# The rate is 1/5. 
# Use pexp to get the probability that a number is greater than 3
pexp(3, 0.2) # P(X <= 3)
1 - pexp(3, 0.2) # 0.5488116

dexp(3, 0.2)

###################
data <- rexp(n = 3, rate = 0.2)
mean(data)







