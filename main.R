# Title     : TODO
# Objective : TODO
# Created by: Administrator
# Created on: 2020/11/11
print('===================Restart============')
dose<-c(20,30,40,45,60)
drugA<-c(16,20,27,40,60)
drugB<-c(15,18,25,31,40)

#
# par(pin=c(1,3),mai=c(1,1,1,1),lwd=2)
plot(dose,drugA,type = 'b',fg='black',pch = 19,lty = 2,col = 'blue')
lines(dose,drugB,type = 'b',pch=22,col = 'red',las=2)
#axis(2,at=drugA,labels = drugA, col.axis='red',las=2)

axis(4,at=dose,labels = round(drugB,digits = 2),col.axis='blue',las=2,cex.axis=0.7,tck=-0.1)
legend('topleft',inset = 0.05,title = 'drugs',c('A','B'),lty = c(1,2),pch = c(15,17),col=c('red','blue'))
library(Hmisc)
minor.tick(nx=3,ny=3,tick.ratio = 0.5)
chong<-c(12,13,15,20)

girlf<-c(10,10,10,20)
E12<-data.frame(chong,girlf)
rownames(E12)<-c('CYJ','WYZ','CXR','YMZ')
E12<-as.matrix(E12)
barplot(E12,main ="E12" ,xlab = "Capita" ,ylab = "Chong!" ,horiz = F)
barplot(E12,main ="E12" ,xlab = "Capita" ,ylab = "Chong!" ,horiz = F,beside = T)
pie(chong,labels = c('CYJ','WYZ','CXR','YMZ'),col = rainbow(4),main = 'E12 chong!')
hist(mtcars$mpg,breaks = 12,col=rainbow(12),xlab = 'Per mile',ylab = 'Per capita')
boxplot(mpg~ cyl *am,data = mtcars,main="Car mileague",xlab = "Num CY",ylab = "Mil Gal",col = c('red','blue','green'))
dotchart(mtcars$mpg,labels = row.names(mtcars),cex = 0.7,color = '#008B8B',main='car',xlab = "MPG")
df<-as.matrix(scale(mtcars))
heatmap(df,scale = 'none')
