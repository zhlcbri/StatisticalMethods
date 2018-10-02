# P2
x_val <- c(1, 1, 2, 3)
y_val <- c(2, 4, 2, 0)
df <- data.frame(x, y)
m <- lm(y_val ~ x_val, data = df) 
summary(m)

# cor(x_val, y_val)

scatter.smooth(x = x_val, y = y_val)


# R1
x <- runif(500, 50, 80)
y <- c()

for (i in 1:500) {
  y[i] <- 36 - runif(1, 3.0, 5.0) * x[i]
}

cor(x, y)

hwdata <- data.frame(x, y)

model = lm(y ~ x, data = hwdata)
summary(model)




# R2
# scatterplot
scatter.smooth(x = x, 
               y = y, 
               main="x ~ y")  

# build linear model and display summary 
# written in R1


