#lab-3-9
# ====================
# 问题9：三次样条插值
# ====================

# 1. 车门曲线节点数据
x_nodes <- c(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
y_nodes <- c(2.51, 3.30, 4.04, 4.70, 5.22, 5.54, 5.78, 5.40, 5.57, 5.70, 5.58)

# 2. 三次样条插值（正确函数）
spline_fun <- splinefun(x_nodes, y_nodes, method = "fmm")  # 三次样条

# 3. 生成平滑曲线
x_plot <- seq(0, 10, length.out = 200)
y_plot <- spline_fun(x_plot)

# 4. 画图
plot(x_nodes, y_nodes, 
     main = "三次样条函数逼近车门曲线",
     xlab = "x", ylab = "y",
     pch = 19, col = "red", cex = 1.2)
lines(x_plot, y_plot, col = "blue", lwd = 2)


# ====================
# sin(x)分段插值
# ====================

# 1. 定义插值节点
x_k <- 0:10  # x_k = k, k=0,1,...,10
y_k <- sin(x_k)

# 2. 生成用于绘制真实曲线的密集x值
x_true <- seq(0, 10, length.out = 200)
y_true <- sin(x_true)

# 3. 生成分段线性插值函数和分段常数插值函数
linear_fun <- approxfun(x_k, y_k, method = "linear")
constant_fun <- approxfun(x_k, y_k, method = "constant", f = 0) # f=0表示取左端点值

# 4. 计算插值函数在密集x值上的y值
y_linear <- linear_fun(x_true)
y_constant <- constant_fun(x_true)

# 5. 绘制结果
plot(x_true, y_true, type = "l", col = "green", lwd = 2, 
     main = "sin(x)的分段插值", xlab = "x", ylab = "y")
points(x_k, y_k, pch = 16, col = "red", cex = 1.2)
lines(x_true, y_linear, col = "blue", lty = 2, lwd = 2)
lines(x_true, y_constant, col = "purple", lty = 3, lwd = 2)
legend("bottomleft", legend = c("sin(x)真实曲线", "插值节点", "分段线性插值", "分段常数插值"), 
       col = c("green", "red", "blue", "purple"), 
       lty = c(1, NA, 2, 3), pch = c(NA, 16, NA, NA), lwd = 2)