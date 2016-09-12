#csc570 data science essentials
# titanic dataset EDA
# Matthew Murphy

# load dataset
train <- read.csv("train.csv", stringsAsFactors = FALSE)

#display structure of object (type given as int/num=continuous, Factor=categorical)
str(train)

#list of variable names
names(train)

#number of observations
nrow(train)

#statistical summary of all variables in dataset (includes min, max, median and mean, but not S.D.)
summary(train)

#statistical summary of each variable of interest (NA's are missing observations)
summary(train$PassengerID)
summary(train$Survived)
summary(train$Pclass)
summary(train$Sex)  #not very useful, use table() instead
summary(train$Age)
summary(train$SibSp)
summary(train$Parch)
summary(train$Ticket) #not very useful, use table() instead
summary(train$Fare)
summary(train$Cabin) #not very useful, use table() instead
summary(train$Embarked)

#statistical calculations of continuous variables (max, min, mean AND standard deviation)
max(train$PassengerID)
min(train$PassengerID)
mean(train$PassengerID)
sd(train$PassengerID)

max(train$Survived)
min(train$Survived)
mean(train$Survived)
sd(train$Survived)

max(train$Pclass)
min(train$Pclass)
mean(train$Pclass)
sd(train$Pclass)

max(train$Age)
min(train$Age)
mean(train$Age)
sd(train$Age)

max(train$SibSp)
min(train$SibSp)
mean(train$SibSp)
sd(train$SibSp)

max(train$Parch)
min(train$Parch)
mean(train$Parch)
sd(train$Parch)

max(train$Fare)
min(train$Fare)
mean(train$Fare)
sd(train$Fare)

#histograms of numeric variables
hist(train$Survived, main="Histogram of Survived",  xlab ="Survived")
hist(train$Pclass, main = "Histogram of Pclass",  xlab =  "Pclass")
hist(train$Age, main = "Histogram of Age", xlab =  "Age")
hist(train$SibSp, main = "Histogram of SibSp", xlab =  "SibSp")
hist(train$Parch, main = "Histogram of Parch", xlab =  "Parch")
hist(train$Fare, main = "Histogram of Fare", xlab =  "Fare")

#produce a frequency table for all variables
table(train$PassengerID)
table(train$Survived)
table(train$Pclass)
table(train$Sex)
table(train$Age)
table(train$SibSp)
table(train$Parch)
table(train$Ticket)  #still not very useful
table(train$Fare)    #still not very useful
table(train$Cabin)   #still not very useful
table(train$Embarked)

#boxplot of fares
boxplot(train$Fare, main="Boxplot of Fare", ylab = "Fares")

#boxplot of Age
boxplot(train$Age, main="Boxplot of Age", ylab = "Age")

#missing values
sum(is.na(train$Age))





