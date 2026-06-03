# lab5-2 自编函数计算 偏度系数 & 峰度系数

# 1. 上一题体重数据
w <- c(75.0,64.0,47.4,66.9,62.2,62.2,58.7,63.5,66.6,64.0,57.0,69.0,56.9,50.0,72.0)

# 2. 自编函数：计算偏度系数
skewness <- function(x) {
  n <- length(x)
  x_bar <- mean(x)
  m3 <- sum((x - x_bar)^3) / n
  s <- sd(x)
  g1 <- m3 / (s^3)
  return(g1)
}

# 3. 自编函数：计算峰度系数
kurtosis <- function(x) {
  n <- length(x)
  x_bar <- mean(x)
  m4 <- sum((x - x_bar)^4) / n
  s <- sd(x)
  g2 <- m4 / (s^4) - 3  # 减3是为了让正态分布峰度=0
  return(g2)
}

# 4. 计算结果
g1 <- skewness(w)
g2 <- kurtosis(w)

# 5. 输出
cat("偏度系数 g1 =", g1, "\n")
cat("峰度系数 g2 =", g2, "\n")