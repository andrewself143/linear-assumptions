#R script for checking the assumptions required for linear regression
# Simple linear regression using number of pages to predict the cost of a textbook

#Extract Data
ct = TextPrices$Price
pg = TextPrices$Pages

# Investigate relationship: Is linear regression appropriate 
plot(pg, ct, xlab = "Pages", ylab = "Cost", main = "Pages vs Cost")

#Determine Equation for Regression Line
fit = lm(Price~Pages, data = TextPrices)
summary(fit)

#Plot residuals vs X
err = resid(fit)
plot(pg, err, main = "X vs. Residuals")

#Plot residuals vs fitted
plot(fit$fitted.values, err, main = "Fitted Values vs. Residuals")

##QQ Plot
qqnorm(err)
qqline(err)

#stem and leaf and histogram
stem(err)
hist(err)

