#R script for checking the assumptions required for linear regression


ms = Caterpillars$Mass
fd = Caterpillars$Intake
plot(fd, ms, xlab = "Food Intake", ylab = "Mass", main = "Food Intake vs Mass")
fit = lm(Mass~Intake, data = Caterpillars)
summary(fit)
plot(fit)
err = resid(fit)
plot(fit$fitted.values, err, main = "Fitted Values vs. Residuals")

logms = Caterpillars$LogMass
logfd = Caterpillars$LogIntake
plot(logfd, logms, xlab = "Log Food Intake", ylab = "Log Mass", main = "Log Food Intake vs Log Mass")
logFit = lm(LogMass~LogIntake, data = Caterpillars)
logErr = resid(logFit)
plot(logFit$fitted.values, logErr, main = "Log Fitted Values vs. Log Residuals")
