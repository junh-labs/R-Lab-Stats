#lab3-8

# 二次拉格朗日插值函数
lagrange_sqrt <- function(x) {
  # 已知节点
  x_nodes <- c(1, 4, 9)
  y_nodes <- c(1, 2, 3)
  
  n <- length(x_nodes)
  result <- 0
  
  for (k in 1:n) {
    lk <- 1
    for (j in 1:n) {
      if (j != k) {
        lk <- lk * (x - x_nodes[j]) / (x_nodes[k] - x_nodes[j])
      }
    }
    result <- result + y_nodes[k] * lk
  }
  return(result)
}

# 计算近似值
sqrt5_approx <- lagrange_sqrt(5)
sqrt6_approx <- lagrange_sqrt(6)

# 输出结果
cat("√5 的拉格朗日插值近似值：", sqrt5_approx, "\n")
cat("√6 的拉格朗日插值近似值：", sqrt6_approx, "\n")
cat("√5 的真实值：", sqrt(5), "，误差：", abs(sqrt5_approx - sqrt(5)), "\n")
cat("√6 的真实值：", sqrt(6), "，误差：", abs(sqrt6_approx - sqrt(6)), "\n")