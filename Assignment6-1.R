library(titanic)
c <- titanic_train
#Question 1 and 2 unsolved

#Question 3
library(mice)
imp = mice(c, method = "rf", m=5)
imputedc = complete(imp)
apply(apply(imputedc,2,is.na),2,sum)
par(mfrow=c(1,2))
hist(c$Age, main = "Before Imputation", col = "violet")
hist(imputedc$Age, main = "Post Imputation", col = "blue")
