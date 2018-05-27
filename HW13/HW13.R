pnorm(0.08, 0.25, 0.0158, T)

# P1
pnorm(0.835, 0.8, 0.0283, F)


# P5
pnorm(0.671, 0.75, 0.0433, T)


# R
sample <- dplyr::sample_n(pibinary, 300)
df <- data.frame(table(sample))
df$Freq[2] / sum(df$Freq) # 0.52
