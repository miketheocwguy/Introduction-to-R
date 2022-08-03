#Michael Charles Nolan exercise 1 
#for each element of vector rnorm(100) the counter is looped.
#if the element in the vector is >= -1 AND <= 1 the counter is rewarded with a +1.
# for the assigment that number found by the counter is divided by N  which = 100
count <- 0
v <- rnorm(100)
for (i in v) {
  if (i >= -1 & i <= 1){
    count = count + 1
  }
} 
print(count/100)