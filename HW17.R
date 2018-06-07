# P5 (c)
xvals = runif(100, 0, 120)
yvals = 2 + 6/100 * xvals + rnorm(100, 0, 1)
df <- data.frame(xvals, yvals)
model = lm(yvals ~ xvals, data = df)
summary(model)
sqrt(0.8385)


# (e)
scatter.smooth(x = xvals, 
               y = yvals, 
               main="xvals ~ yvals")


# P3
cookie <- runif(202, 0, 15)
happiness <- 10 + 0.2 * cookie + rnorm(202, 0, 2.85)

df <- data.frame(cookie, happiness)
model <- lm(happiness ~ cookie, data = df)
summary(model)
