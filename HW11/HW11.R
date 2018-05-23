# P2
diff <- c(5.2, 4.75, 1.3, 6.9, 5.07,
          8.15, 1.27, 6.06, 1.18, 8.05, 21.26)
mean(diff) # 6.29
sd(diff) # 5.588773


# P3
t_1 <- c(100, 58.6, 93.5, 83.6, 84.1)
n_1 <- length(t_1)
mean_1 <- mean(t_1)
sd_1 <- sd(t_1)

t_2 <- c(76.4, 84.2, 96.5, 88.8, 85.3, 79.1, 83.6)
n_2 <- length(t_2)
mean_2 <- mean(t_2)
sd_2 <- sd(t_2)

df <- min(n_1 - 1, n_2 - 1)
se <- sqrt((sd_1)^2 / n_1 + (sd_2)^2 / n_2)
t <- (mean_1 - mean_2) / se
t

2 * pt(t, df) # 0.9115537


# P4
pt(2.610, df = 36, lower.tail = F) # ??


# R
s_p <- sample(pi$digits, size = 400, replace = F, prob = NULL)
s_e <- sample(e$digits, size = 400, replace = F, prob = NULL)

t.test(s_p, 
       s_e, 
       alternative = "two.sided",
       mu = mean(s_e) - mean(s_p),
       paired = TRUE,
       conf.level = 0.99)

# t.test(Control,Treat,alternative="less", var.equal = TRUE)
# manually check answer
mean_p <- mean(s_p)
mean_e <- mean(s_e)

sd_p <- sd(s_p)
sd_e <- sd(s_e)

se <- sqrt((sd_p)^2 / 400 +(sd_e)^2 / 400)
t <- (mean_p - mean_e) / se
pt(t, 399)

