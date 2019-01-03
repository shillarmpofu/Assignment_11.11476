setwd('C:/Users/shillar.mpofu/Desktop/DS Assignments/Technical/MODELING IN R - I')
getwd()
bank_details = read.csv('bank-full.csv',header = TRUE, sep = ";")
bank_details
summary(bank_details)
str(bank_details)

#a. Create a visual for representing missing values in the dataset.
bank_details[bank_details=='unknown'] = NA
table(bank_details$job)
summary(is.na(bank_details))
#install.packages('VIM')
library(VIM)
aggr_plot <- aggr(bank_details, col=c(' blue','darkgreen'), numbers=FALSE, sortVars=TRUE, labels=names(bank_details),  ylab=c("Histogram of missing data","Pattern"))

#b. Show a distribution of clients based on a Job.
jobfrequency <-table(bank_details$job)
jobfrequency


barplot(height = jobfrequency[order(jobfrequency,decreasing = TRUE)] ,col = 'navy blue')

#c. Check whether is there any relation between Job and Marital Status?
library(ggplot2)
ggplot(bank_details,aes(bank_details$marital,bank_details$job)) + geom_jitter()
# there is no relationship between job and marital status 


#d. Check whether is there any association between Job and Education?
ggplot(bank_details,aes(bank_details$education,bank_details$job)) + geom_jitter()
# there is no relationship between job and education                                                                              



