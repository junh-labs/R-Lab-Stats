#lab5-5
sale <- c(369,241,213,197,179,135,107,334,228,209,
          194,148,108,105,245,217,209,187,136,107)

#沿用自编偏度、峰度函数
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
m <- mean(sale)
v <- var(sale)
s <- sd(sale)
cv <- s/m
sk <- skewness(sale)
ku <- kurtosis(sale)
cat("均值 =",m,"\n")
cat("样本方差 =",v,"\n")
cat("样本标准差 =",s,"\n")
cat("变异系数 =",cv,"\n")
cat("偏度 =",sk,"\n")
cat("峰度 =",ku,"\n")

#(2)
q <- quantile(sale,c(0.25,0.5,0.75))
Q1 <- q[1]; Q2 <- q[2]; Q3 <- q[3]
IQR <- Q3-Q1
M3 <- (Q1+2*Q2+Q3)/4
cat("\nQ1(下四分位数) =",Q1,"\n")
cat("中位数Q2 =",Q2,"\n")
cat("Q3(上四分位数) =",Q3,"\n")
cat("四分位极差IQR =",IQR,"\n")
cat("三均值 =",M3,"\n")

#(3) Shapiro-Wilk W正态检验
cat("\n==== Shapiro-Wilk正态W检验 ====\n")
print(shapiro.test(sale))