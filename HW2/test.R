?barplot

View(heartTr)
head(heartTr)

summary(heartTr)
summary(heartTr$age)

plot(x = heartTr$age, y = heartTr$survTime)

dim(heartTr)

heartTr$aa <- NA
heartTr <- heartTr[,-9]

seq(1:100)
seq(1, 100, length = 100)
