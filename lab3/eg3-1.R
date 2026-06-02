#eg3-1：例3.1	读取VIM包(需要安装VIM包)中的sleep数据作为例子，它的样本数为62，变量数为10，
#由complete.cases函数计算可知完整的样本个数为42。

data(sleep,package = "VIM")
dim(sleep)        # 查看数据维度
sum(complete.cases(sleep))  # 查看完整样本数

# 加载数据并运行绘图
library(colorspace)    # 加载颜色空间处理包，用于绘图时设置颜色
library(grid)          # 加载绘图底层布局包，用于高级图形排版
library(data.table)     # 加载数据处理高速包，用于快速读取、处理大数据 
library(VIM)
aggr(sleep)       # 绘制缺失值分布图

matrixplot(sleep)   #矩阵热图
#其中，浅色表示值小，深色表示值大；默认缺失值为红色

marginplot(sleep[c("Gest","Dream")],pch = c(20),col = c("darkgray","red","blue"))   #双变量散点图
#pch 设置点的样式：实心小圆点

#识别缺失数据的模式
library(Rcpp)#要先加载Rcpp包
library(mice)
md.pattern(sleep)
