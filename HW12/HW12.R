# P1
q1 <- qnorm(0.95)
q2 <- qnorm(0.9)
s <- 4
se <- (81 - 78) / (q1 + q2)
(s / se) ^ 2


# P2
qnorm(0.985, mean = 13.7, sd = 4/sqrt(25)) # 15.43607
qnorm(0.015, mean = 13.7, sd = 4/sqrt(25)) # 11.96393

pnorm(15.436, mean = 15.7, sd = 0.8, lower.tail = F) # 0.6293
pnorm(11.964, mean = 15.7, sd = 0.8, lower.tail = T) # 1.505999e-06


# P4
pf(1.87, df1 = 7, df2 = 189, lower.tail = F) # 0.07655504


# R1
# remove rows for the 2 manufacturers who are the least represented
mfrs <- cereal$mfr
# unique(mfrs)
# mfrs
df <- as.data.frame(table(mfrs))
dplyr::top_n(df, 2, -df$Freq)
cereal_2 <- cereal[!(cereal$mfr == "A" | cereal$mfr == "N"),]
# unique(cereal_2$mfr) # "Q" "K" "R" "G" "P"


# R2
# make a single side-by-side boxplot that has 5 boxlots
# one for each remaining manufacturer
# where the quantitative variable being measured is calories
Q <- cereal_2[(cereal_2$mfr == "Q"),]
K <- cereal_2[(cereal_2$mfr == "K"),]
R <- cereal_2[(cereal_2$mfr == "R"),]
G <- cereal_2[(cereal_2$mfr == "G"),]
P <- cereal_2[(cereal_2$mfr == "P"),]

mfrs <- c("Q", "K", "R", "G", "P")

boxplot(N$calories,
        K$calories,
        R$calories,
        P$calories,
        A$calories,
        names = mfrs, 
        horizontal = FALSE,
        main = "Calories per serving by manufacturers",
        xlab = "calories")


# R3
# find mean and sd for the calories variable for each 5 manufacturers
mean(Q$calories) # 95
sd(Q$calories) # 29.277

mean(K$calories) # 108.6957
sd(K$calories) # 22.21882

mean(R$calories) # 115
sd(R$calories) # 22.67787

mean(G$calories) # 111.3636
sd(G$calories) # 10.37187

mean(P$calories) # 108.8889
sd(P$calories) # 10.54093

for (i in 1:5) {
  print(mfrs[i])
  cat("mean:", mean(cereal_2[(cereal_2$mfr == mfrs[i]),]$calories), '\n')
  cat("sd:", sd(cereal_2[(cereal_2$mfr == mfrs[i]),]$calories), '\n')
}


# R5
results = aov(cereal_2$calories ~ cereal_2$mfr, data = cereal_2)
summary(results)



