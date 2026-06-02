#lab4-5
# 鸢尾花数据集 阵列式散点图（散点图矩阵）
data(iris)

# 绘制阵列式散点图（自动展示所有变量两两关系）
# 颜色按花的种类区分
pairs(iris[, 1:4], 
      col = as.integer(iris$Species),  # 三种颜色区分品种
      main = "鸢尾花数据阵列式散点图")