#3.5.2.1卡方检验
x = cbind(sample(c(1:50),10),sample(c(1:50),10))
chisq.test(x)

#P-value<0.05，即在0.05显著性水平下拒绝相关的原假设，即变量不相关。

#3.5.2.2相关系数，协方差
x = cbind(rnorm(10),rnorm(10))
cov(x)

#3.5.2.3查重
x = cbind(sample(c(1:10),10,replace = T),rnorm(10))  #随机生成数据集，第一列为样本编号，存在重复
head(x)
y = unique(x[,1])    #将样本编号去重
x = x[y,]
head(x)