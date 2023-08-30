ages=c(21,30,40,22,45,50,51,23,25,35)
plot(ages)
salary=c(21000,30000,40000,22000,45000,50000,51000,23000,25000,35000)









data()
airquality=datasets::airquality


###top 10 rows amd colums

head(airquality,10)
tail(airquality,10)
names(airquality)


#to see entire dataset 

airquality[,c(1,2)]

df = airquality[,-6]
df

summary(airquality[,1])

summary(airquality$Temp)
summary(airquality$Ozone)


airquality$Wind
 
summary(airquality$Wind)


summary(airquality)


##########Visulization
plot(airquality$Wind)
plot(airquality$Temp,airquality$Wind,type = "p")
plot(airquality) #scatter plot 
help("plot")
plot(airquality$Ozone,airquality$Month)
plot(airquality$Month,airquality$Ozone)


#points and lines 
plot(airquality$Wind, type = "p")
plot(airquality$Wind, type = "l")
plot(airquality$Wind, type = "b")
help("plot")


plot(airquality$Wind,
     xlab = 'Ozone Concentration ',
     ylab = 'No of Instances',
     main = 'ozone levels in NY city',
     col = 'red',
     type = 'l')
 
plot(airquality,col ='gold')
plot(airquality$Ozone,airquality$Solar.R)


plot(airquality$Solar.R,airquality$Ozone)

#horizontal bar plot
barplot(airquality$Ozone,
        main = 'ozone concentration in air',
        ylab = 'ozone levels',
        col= 'Blue',
        horiz = T ,
        axes = F
        )

help("barplot")

#Histogram 

hist(airquality$Temp)

hist(airquality$Temp,
     main = 'solor radiation values in air',
     xlab = 'solar rad.',
     col = 'yellow',
     border = 'red')

help("hist")


#single box plot 
help("boxplot")

boxplot(airquality$Wind,
        main="Boxplot",
        col = "yellow",
        border = "red",
        horizontal = T)

boxplot.stats(airquality$Wind)$out

airquality$Ozone



#multiple box plots
boxplot(airquality[,1:4],
        main='Multiple box plot',
        horizontal = TRUE,
        col = 'yellow')

#margin of the grid (mar)(bottom,left,top,right)
#no of rows and columns(mfrows),
#whether a border is to be inclided(bty)
#and position of the 
#labels
#bty - box around the plot 
help("par")
par(mfrow=c(1,1),mar=c(1,2,1,2), las=0, bty="o")
hist(airquality$Ozone)
plot(airquality$Ozone, airquality$Wind)
plot(airquality$Ozone, type = "l")
boxplot(airquality$Wind, type = "l")
plot(airquality$Solar.R, type = "l")
barplot(airquality$Ozone, main = 'ozone concentration in air ',
          xlab ='ozone levels',col = 'green' )

hist(airquality$Solar.R)
boxplot(airquality[,0:4],main='Multople box plot')

#considering NA values 
airquality
max(airquality$Wind)
min(airquality$Temp)
min(airquality$Solar.R)
mean(airquality$Solar.R)
mean(airquality$Wind)


mean(airquality$Solar.R,na.rm = T)     
median(airquality$Ozone)
median(airquality$Ozone,na.rm = T)
min(airquality$Ozone)
min(airquality$Ozone,na.rm = T)

#google following functions as variance in R,etc
#var
#skewness
#kurtosis
#density plot

var(airquality)
sd(airquality$Ozone)
sd(airquality$Ozone,na.rm = T)


skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone)  #error

skewness(airquality$Ozone,na.rm=T)
kurtosis(airquality$Ozone, na.rm = T)


#density plot 
plot(density(airquality$Wind))
plot(density(airquality$Ozone, na.rm = T))

## in class exersise
e_quakes=datasets::quakes
