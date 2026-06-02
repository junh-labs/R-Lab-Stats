#lab3-5

# 数据标准化
# 加载R自带数据集 mtcars（汽车性能数据）
data(mtcars)

# 对 mpg(油耗), disp(排量), hp(马力) 列进行Z-Score标准化
#标准化值 = (原始值 - 均值) / 标准差
mtcars_scaled <- scale(mtcars[, c("mpg", "disp", "hp")])

# 查看标准化后前5行数据
head(mtcars_scaled)

# 验证标准化结果：均值接近 0
colMeans(mtcars_scaled)

# 验证标准化结果：标准差接近 1
apply(mtcars_scaled, 2, sd)