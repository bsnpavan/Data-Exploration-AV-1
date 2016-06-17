### Load All Libraries
library("pastecs")

### Load data from File to R
traindata<- read.csv("loan_train.csv")

### Analyze pulled Data, Summary
head(traindata, 5)
str(traindata)

### Univariate Analysis
train_cont<- subset(traindata,select= c(ApplicantIncome, LoanAmount, Loan_Amount_Term, Credit_History))
train_cat<- subset(traindata,select= -c(ApplicantIncome, LoanAmount, Loan_Amount_Term, Credit_History))
summary(train_cont)
options(scipen=100)
options(digits=2)
stat.desc(train_cont)

apply(train_cat, 2, function(x){length(unique(x))})