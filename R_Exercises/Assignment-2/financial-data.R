#Michael Charles Nolan
#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- round(revenue - expenses, 2)

tax <- round((profit - (profit * 0.3)) / 1000, 2)

#used paste0 to create the percent symbol for ease of identification
profit.margin <- paste0(round(((profit - (profit * 0.3))/revenue) * 100, 0), '%')

#creating a good and bad months vector proved to be more difficult than expect, to overcome this i created a vector of logical that abstractly represents given parameters 

good.months <- tax > mean(tax)

bad.months <- tax < mean(tax)

best.month <- max(tax)

worst.month <- min(tax)


print(profit)
print(tax)
print(profit.margin)
print(good.months)
print(bad.months)
print(best.month)
print(worst.month)


# I wanted to create a for loop that compared values in the profit after tax vector, 
#and create a new vector of strings "characters", effectively combining questions (4 to 7)
# although the loop works as intended, I am unable to create a new vector with the results of the loop
#in order for me to create this new vector I assume that I would need a method of saving the elements created by my loop.

for (i in tax) {
  if((i > mean(tax)) && (i < max(tax))){
    print('good month')
  }else if(i == max(tax)){
  print('best month')
 }else if(i == min(tax)){
  print('worst month')
 }else{
  print('bad month')
 }
}
 


