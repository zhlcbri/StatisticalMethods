library(moments)

# P1
prop.test(x = c(0.5, 0.9), n = c(724, 610), conf.level = 0.85, correct = F)
# prop.test(x = c(0.9, 0.5), n = c(610, 724), conf.level = 0.85, correct = F)


# R1
h_scores <- runif(100, 0, 100)
ai <- mean(sample(h_scores, 50, F, NULL) > 99)

sample <- sample(h_scores, 50, F, NULL)
subset(sample, sample > 99)

# R2
hist(replicate(50000, sample(h_scores, 50, F, NULL)))

# R4
for (c in 1:99) {
  # print(mean(sample(h_scores, 50, F, NULL) > c))
  samp_dis <- sample(h_scores, 50, F, NULL)
  samp_dis <- subset(samp_dis, samp_dis > c)
  cat("kurtosis for sampling distribution with c =", c, ":", kurtosis(samp_dis), "\n")
}
