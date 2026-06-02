#outlier函数

library(outliers)
set.seed(1);s1 = .Random.seed  #设置随机数种子，保证每次出现的随机数相同
y = rnorm(100)               #生成100个标准正太随机数
outlier(y)
plot(y)
points(-2.2147,pch = 8)   #用星号标记离群值


noise_pos = which(y == outlier(y))
#方法 1：直接删除噪声点
y_del <- y[-noise_pos]
# 可视化（去噪后）
plot(y_del, main = "方法1：删除噪声点后")


y_mean <- y
y_mean[noise_pos] <- mean(y, na.rm=T)

#方法 2：用均值替换噪声
# 可视化
plot(y_mean, main = "方法2：均值替换噪声")
points(noise_pos, y_mean[noise_pos], pch=8, cex=1.5)
