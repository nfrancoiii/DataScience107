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

#Subset for riders that participated in at least one event in 2013
new_bull <- bull[bull$Events13  > 0 ,]

# Visualize and describe the first variable of interest
hist(new_bull$Rides13)
fivenum(new_bull$Rides13)
mean(new_bull$Rides13)
sd(new_bull$Rides13)

# Visualize and describe the second variable of interest
hist(new_bull$Top10_13)
fivenum(new_bull$Top10_13)
mean(new_bull$Top10_13)
sd(new_bull$Top10_13)

# Create a scatterplot
plot(new_bull$Rides13,new_bull$Top10_13)

# Add line of best fit
abline(lm(new_bull$Top10_13~new_bull$Rides13))

# Calculate the correlation coefficient
cor(new_bull$Rides13,new_bull$Top10_13)

# Create a correlation matrix 
vars <- c("Top10_13", "Rides13")
cor(new_bull[,vars])

###############################
#Subset for riders that participated in at least one event in 2012
new_bull12 <- bull[bull$Events12  > 0 ,]

hist(new_bull12$Earnings12)
fivenum(new_bull12$Earnings12)
#Make a correlation matrix
vars12 <- c("Earnings12", "RidePer12", "CupPoints12")
cor(new_bull12[,vars12])

#################################
##Problem Set

new_bull14 <- bull[bull$Rides14,]

plot(new_bull14$)
