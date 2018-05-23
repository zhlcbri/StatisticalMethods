smokers <- read.csv("smoking.csv")
head(smokers)

nrow(smokers)
ncol(smokers)

mean(smoking$age)

nrow(subset(smoking, gender == "Female" & maritalStatus == "Divorced"))

head(subset(smoking, nationality == "Irish"))

smoking$total = smoking$amtWeekdays + smoking$amtWeekends
mean(subset(smoking, smoke == "Yes" & gender == "Male")$total) # 34.07487
mean(subset(smoking, smoke == "Yes" & gender == "Female")$total) # 27.03419

hist(smoking$age)
