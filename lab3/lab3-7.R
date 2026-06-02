#lab3-7

# Lagrange 插值函数
# 输入：x_nodes - 插值节点的x值向量
#      y_nodes - 插值节点的y值向量
#      x - 待插值的点（可以是单个值或向量）
# 输出：插值结果 y

lagrange_interp <- function(x_nodes, y_nodes, x) {
  n <- length(x_nodes) - 1  # n为多项式次数，节点数为n+1
  y <- numeric(length(x))   # 初始化结果向量
  
  for (i in seq_along(x)) {
    xi <- x[i]
    L <- 0  # 初始化Lagrange多项式值
    for (k in 0:n) {
      # 计算基函数 l_k(xi)
      lk <- 1
      for (j in 0:n) {
        if (j != k) {
          lk <- lk * (xi - x_nodes[j+1]) / (x_nodes[k+1] - x_nodes[j+1])
        }
      }
      # 累加 y_k * l_k(xi)
      L <- L + y_nodes[k+1] * lk
    }
    y[i] <- L
  }
  return(y)
}

# ========== 示例使用 ==========
# 给定插值节点
x_nodes <- c(0, 1, 2)
y_nodes <- c(1, 2, 3)

# 待插值点
x <- seq(0, 2, by = 0.1)

# 调用函数插值
y_interp <- lagrange_interp(x_nodes, y_nodes, x)

# 可视化插值结果
plot(x_nodes, y_nodes, pch = 16, col = "red", cex = 1.5, main = "Lagrange 插值示例")
lines(x, y_interp, type = "l", col = "blue", lwd = 2)
legend("topleft", legend = c("插值节点", "插值多项式"),
       col = c("red", "blue"), pch = c(16, NA), lty = c(NA, 1), lwd = c(NA, 2))