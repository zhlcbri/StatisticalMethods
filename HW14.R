library(moments)

# P1
prop.test(x = c(0.9*610, 0.5*724), n = c(610, 724), conf.level = 0.85, correct = F)


# R1
mean(runif(50, 0, 100) > 99)

# R2
hist(replicate(50000, mean(runif(50, 0, 100) > 99)))

# R4
for (c in 1:99) {
  sample_dis <- (runif(50, 0, 100) > c)
  cat("kurtosis for sampling distribution with c =", c, ":", kurtosis(sample_dis), "\n")
}


