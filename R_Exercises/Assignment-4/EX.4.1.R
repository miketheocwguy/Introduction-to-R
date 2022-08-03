#Michael charles nolan
#data.frame part 1 
Age <- c(22,25,26)
Weight <- c(150,164,120)
Sex <- c('M','M','F')
People <- c('Sam','Frank','Amy')
friends <- data.frame(row.names = People,Age,Weight,Sex)

# Ex.2 is mtcar dataset a data frame = True
is.data.frame(mtcars)

#Ex.3 convert
mat <- matrix(1:25,nrow = 5)
mat <- as.data.frame(mat)
#Ex.4
df <- mtcars
#Ex.5
head(df)
#Ex.6
mean(df$mpg)
#Ex.7
df[df$cyl == 6,]
#Ex.8
df[,c('am','gear','carb')]
#Ex.9
df$performance <- (df$hp/df$wt)
#Ex.10
mean(df[df$hp>100 & df$wt > 2.5,]$mpg)
#Ex.11
df['Hornet Sportabout',]$mpg