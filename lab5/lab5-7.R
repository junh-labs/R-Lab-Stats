#lab5-7
pop <- c(5.4167,5.5196,5.6300,5.7482,5.8796,6.0266,6.1456,6.2828,
         6.4653,6.5994,6.7207,6.6207,6.5859,6.7295,6.9172,7.0499,
         7.2538,7.4542,7.6368,7.8534,8.0671,8.2992,6.9172,8.7177,
         8.9211,9.0859,9.2420,9.3717,9.4974,9.6259,9.7542,9.8705,
         10.0072,10.1541,10.2495,10.3475)

#自编偏度、峰度函数
skewness <- function(x){
  n <- length(x)
  xb <- mean(x)
  m3 <- sum((x-xb)^3)/n
  s <- sd(x)
  m3/s^3
}
kurtosis <- function(x){
  n <- length(x)
  xb <- mean(x)
  m4 <- sum((x-xb)^4)/n
  s <- sd(x)
  m4/s^4 - 3
}

#(1)
mu <- mean(pop)
va <- var(pop)
st <- sd(pop)
cv <- st/mu
sk <- skewness(pop)
ku <- kurtosis(pop)

cat("均值 =",mu,"\n")
cat("样本方差 =",va,"\n")
cat("样本标准差 =",st,"\n")
cat("变异系数 =",cv,"\n")
cat("偏度 =",sk,"\n")
cat("峰度 =",ku,"\n\n")

#(2)四分位数、三均值、五数概括
q <- quantile(pop,c(0.25,0.5,0.75))
Q1 <- q[1]; Q2 <- q[2]; Q3 <- q[3]
IQR <- Q3-Q1
M3 <- (Q1+2*Q2+Q3)/4
five <- fivenum(pop)

cat("下四分位数Q1 =",Q1,"\n")
cat("中位数Q2 =",Q2,"\n")
cat("上四分位数Q3 =",Q3,"\n")
cat("四分位极差IQR =",IQR,"\n")
cat("三均值 =",M3,"\n")
cat("五数概括(min,Q1,med,Q3,max):\n")
print(five)

#字母值M,F,E,D
cat("\n字母值：\n")
cat("M(中位数):",Q2,"\n")
cat("F(0.25,0.75):",Q1,Q3,"\n")
cat("E(0.125,0.875):",quantile(pop,c(0.125,0.875)),"\n")
cat("D(0.0625,0.9375):",quantile(pop,c(0.0625,0.9375)),"\n")