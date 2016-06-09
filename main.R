traindata<- read.csv("loan_train.csv")
head(traindata)
traindata
head(traindata, 1)

filter(traindata, Loan_ID:Loan_Status) %>% 