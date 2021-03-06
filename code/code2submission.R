worms <- read.csv("worms.csv")
names(worms)
attach(worms)
worms[,1:3]
worms[5:15,]
worms[Area>3 & Slope <3,]
worms[order(Area),]
worms[order(Area),c(2,3,5,7)]
worms[rev(order(worms[,5])),c(5,7)]
with(worms,tapply(Worm.density,Vegetation,mean))
aggregate(worms[,c(2,3,5,7)],list(Vegetation),mean)
aggregate(worms[,c(2,3,5,7)],list(Community=Vegetation),mean)
aggregate(worms[,c(2,3,5,7)],
list(Moisture=Damp,Community=Vegetation),mean)
with(worms,tapply(Slope,list(Damp,Vegetation),mean))
data <- read.csv("das.csv")
attach(data)
head(data)
which(y > 10)
y[50]
yields <- read.csv("fertyield.csv")
attach(yields)
head(yields)
table(treatment)
which(treatment == "nitogen")
data <- read.csv("scatter.csv")
attach(data)
head(data)
plot(x,y,pch=21,bg="red")
data <- read.csv("weather.data.csv")
attach(data)
head(data)
plot(factor(month),upper)
data <- read.csv("coplot.csv")
attach(data)
head(data)
windows(7,4)
par(mfrow=c(1,2))
plot(x,y)
plot(z,y)
windows(7,7)
coplot(y~x|z,pch=16,panel=panel.smooth)
data <- read.csv("np.csv")
attach(data)
head(data)
windows(7,4)
par(mfrow=c(1,2))
plot(nitrogen,yield,main="N")
plot(phosphorus,yield,main="P")
tapply(yield,list(nitrogen,phosphorus),mean)
barplot(tapply(yield,list(nitrogen,phosphorus),mean), beside=TRUE,xlab="phosphorus")
legend(locator(1),legend=c("no","yes"),title="nitrogen", fill=c("black","lightgrey"))

