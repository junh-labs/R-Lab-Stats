#lab4-6
# 正态 Q-Q 散点图：检验 mpg 是否符合正态分布
data(mtcars)

# 绘制 Q-Q 图
qqnorm(mtcars$mpg, 
       main = "汽车每加仑行驶英里数(mpg) 正态Q-Q图",  # 标题
       xlab = "理论正态分位数",                      # x轴
       ylab = "mpg 观测分位数",                      # y轴
       pch = 19, col = "blue")                       # 点样式+颜色

# 添加参考线（判断是否正态）
qqline(mtcars$mpg, col = "red", lwd = 2)