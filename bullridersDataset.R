#Scatter Plots
plot(bull$YearsPro, bull$BuckOuts, xlab = "Years Pro", ylab = "Buck Outs", main = "Rider Experience")
#Line of Fit
abline(lm(bull$BuckOuts~bull$YearsPro))

#Scatter Plot
plot(bull$Events, bull$BuckOuts, xlab = "Years Pro", ylab = "Events", main = "Rider Experience")
#Line of Fit
abline(lm(bull$BuckOuts~bull$Events))

#Correlations
cor(bull$YearsPro, bull$BuckOuts)
cor(bull$Events, bull$BuckOuts)

#Correlation Matrix
myvars <- c("YearsPro", "Events", "BuckOuts")
cor(bull[, myvars])
