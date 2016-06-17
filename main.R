library("pastecs")

traindata<- read.csv("loan_train.csv")
head(traindata)
traindata
head(traindata, 5)
str(traindata)
train_cont<- subset(traindata,select= c(ApplicantIncome, LoanAmount, Loan_Amount_Term, Credit_History))
summary(train_cont)
options(scipen=100)
options(digits=2)
stat.desc(train_cont)