# R1
hsGPA = satGPA$HSGPA
satSum = satGPA$SATSum
plot(hsGPA, satSum)

# R2
x <- nrow(subset(satGPA, SATV > 50 | SATM > 50)) # 742
x / nrow(satGPA)

# R3
nrow(subset(satGPA, sex == 1 | SATM > 50)) # 808
nrow(subset(satGPA, sex == 2 | SATM > 50)) # 878

# R4
fyGPA = satGPA$FYGPA
satM = satGPA$SATM
satV = satGPA$SATV

plot(hsGPA, fyGPA)
plot(satSum, fyGPA)
plot(satM, fyGPA)
plot(satV, fyGPA)

# Grouped Bar Plot
counts <- table(mtcars$vs, mtcars$gear)
barplot(counts, main="Car Distribution by Gears and VS",
        xlab="Number of Gears", col=c("darkblue","red"),
        legend = rownames(counts), beside=TRUE)

counts <- table(satGPA$HSGPA, satGPA$SATSum)
barplot(counts, 
        main = "First year GPA distribution",
        xlab = "first year GPA",
        col = c("darkblue", "red"),
        legend = rownames(counts),
        besides = T)

# R5
s1 <- subset(satGPA, SATM > 50)
nrow(s1)
s2 <- subset(s1, SATV > 50)
nrow(s2)
nrow(s2) / nrow(s1)
