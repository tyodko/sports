#read the data 
data<-read.table(file = "/Users/qinfeichen/Downloads/women 100meters record.txt",header=TRUE)
data
Time<-data$Time
Year<-data$Year
#use linear model to analyze this dataset
lm(Time~Year)
fitted(lm(Time~Year))
anova(lm(Time~Year))
#plot the orginal values (year and time)
plot(Year,Time,pch=20,col="blue")
#plot the linear regression line
abline(lm(Time~Year),col="red")
#make title of this plot
title(main = "Women's 100 metres world record progression",xlab = "Year",ylab = "Time",xlim = c(1968,2030))
xvalue<-c(1968,1972,1976,1976,1977,1982,1983,1983,1984,1988)
yvalue<-(63.66624-0.02667*Year)
par(new=TRUE)
#draw fitted line, by using the original "x"value and the linear regression euqation to calculate "y"value, which are the fitted numbers of time.
plot(xvalue,yvalue,pch=18,col="green",ann=FALSE,xaxt="n",yaxt="n",xlim = c(1968,1988))
#make legend
legend("bottomleft",legend = c("real points","fitted line","fitted value"),pch = c(20,0,18),lty=c(0,1,0),col = c("blue","red","green"))

newyear<-c(2023:2030)
newyear
ypredict2030<-c(63.66624-0.02667*newyear)
ypredict2030
#by using linear regression, the 100 meters world records for the years 2023 to 2030 are predictted as above.
#the predictted values are:9.71283 9.68616 9.65949 9.63282 9.60615 9.57948 9.55281 9.52614

