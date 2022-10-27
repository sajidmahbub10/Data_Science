sequence <- c(20:50)
print(sequence)

a2 <- c(52:91)
sum <- sum(a2)
sum

avg <- mean(c(20:50))
print(avg)

vec <- rnorm()

v <- sample(-50:50, 5, replace =TRUE)
v

f <- numeric(10)
f

f[1] <- f[2] <-1

for(i in 3:10){
  f[i]<- f[i-2]+f[i-1]
}
print(f)