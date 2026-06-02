#lab4-4
# mtcars 数据集：汽车性能数据
data(mtcars)

# --------------------
# (1) 画出 mpg 的直方图
# --------------------
hist(mtcars$mpg, 
     main = "汽车每加仑英里数(mpg)直方图",
     xlab = "每加仑行驶英里数(mpg)",
     ylab = "频数")

# --------------------
# (2) 12个断点，淡蓝色填充，红色边框
# --------------------
hist(mtcars$mpg, 
     breaks = 12,               # 12个断点
     col = "lightblue",         # 填充色：淡蓝色
     border = "red",            # 边框色：红色
     main = "12个断点的mpg直方图",
     xlab = "每加仑行驶英里数(mpg)",
     ylab = "频数")

# --------------------
# (3) 每种车型 mpg 点图
# --------------------
dotchart(mtcars$mpg, 
         labels = rownames(mtcars),  # 车型名称
         main = "各车型每加仑英里数点图",
         xlab = "每加仑行驶英里数(mpg)",
         pch = 19, col = "blue")

# --------------------
# (4) 按汽缸数(cyl)分组的 mpg 点图
# --------------------
# 按 cyl 分组排序
mtcars_sorted <- mtcars[order(mtcars$cyl), ]

dotchart(mtcars_sorted$mpg, 
         labels = rownames(mtcars_sorted),
         groups = as.factor(mtcars_sorted$cyl),  # 按汽缸数分组
         main = "按汽缸数分组的每加仑英里数点图",
         xlab = "每加仑行驶英里数(mpg)",
         color = c("red","green","blue")[as.factor(mtcars_sorted$cyl)],
         pch = 19)