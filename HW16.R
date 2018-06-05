# P2
x_val <- c(1, 1, 2, 3)
y_val <- c(2, 4, 2, 0)
df <- data.frame(x, y)
m <- lm(y_val ~ x_val, data = df) 
summary(m)

scatter.smooth(x = x_val, y = y_val)


# R1
x <- runif(500, 50, 80)
y <- c()

for (i in 1:500) {
  y[i] <- 36 - runif(1, 3.0, 5.0) * x[i]
}

hwdata <- data.frame(x, y)

model = lm(y ~ x, data = hwdata)
summary(model)

# Call:
#   lm(formula = y ~ x, data = df)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -82.036 -28.136  -1.234  30.365  74.302 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)  37.0288    12.2890   3.013  0.00272 ** 
#   x            -3.9669     0.1872 -21.189  < 2e-16 ***
#   ---
#   Signif. codes:  
#   0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 37.14 on 498 degrees of freedom
# Multiple R-squared:  0.4741,	Adjusted R-squared:  0.4731 
# F-statistic:   449 on 1 and 498 DF,  p-value: < 2.2e-16
# 


# R2
# scatterplot
scatter.smooth(x = x, 
               y = y, 
               main="x ~ y")  

# build linear model and display summary 
# written in R1


