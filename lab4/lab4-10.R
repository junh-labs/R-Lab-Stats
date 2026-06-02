# lab4-10 水蒸气温度与压力 9种绘图
data(pressure)
x <- pressure$temperature  # 温度 x
y <- pressure$pressure      # 压力 y

# (1) 绘出散点图（只画点）
plot(x, y, main = "(1) 散点图", pch = 19, col = "blue")

# (2) 只画线不画点
plot(x, y, type = "l", main = "(2) 只画线")

# (3) 同时绘点和画线，线不穿过点（点线分离）
plot(x, y, main = "(3) 点+线（不穿过）", pch = 19, col = "red")
lines(x, y, col = "blue")

# (4) 仅画(3)中的线
plot(x, y, type = "l", main = "(4) 仅画线", col = "blue")

# (5) 同时绘点和画线，线穿过点
plot(x, y, type = "b", main = "(5) 点+线（穿过）", pch = 19)

# (6) 绘出点到横轴的竖线
plot(x, y, main = "(6) 点到横轴竖线", pch = 19)
segments(x, 0, x, y, col = "red")

# (7) 阶梯图（先横再纵）
plot(x, y, type = "s", main = "(7) 阶梯图 先横后纵")

# (8) 阶梯图（先纵再横）
plot(x, y, type = "S", main = "(8) 阶梯图 先纵后横")

# (9) 空图，不绘任何图形
plot(x, y, type = "n", main = "(9) 空图")