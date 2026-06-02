#缺失数据处理
#1.删除法
#删除第 i 行：x[-i, ]
#①删去行
x <- matrix(1:15,ncol = 5,byrow = T)
#ncol = 5：规定表格一共 5 列
#byrow = T：按行填充（从左到右填，填满一行再填下一行）
x[-1,]

#删除第 j 列：x[ ,-j]
#②删去列
x <- matrix(1:15,ncol = 5,byrow = T)
x[,-3]

#2.插补法
#①	固定值插补
sarary <- c(2000,NA,2500,3000,3500,NA,7500)
sarary

sarary[is.na(sarary)]<-2000
sarary

#均值插入
sarary <- c(2000,NA,2500,3000,3500,NA,7500)
sarary
sarary[is.na(sarary)] <- mean(sarary,na.rm = T)
sarary

#②	多重插补法(Multipleimputation)

#利用蒙特卡罗方法生成多个完整数据集，再对这些数据集分别进行分析
#最后对这些分析结果进行汇总处理。可以用mice包实现

library(Rcpp)
library(mice)

# 对 sleep 数据集进行多重插补，自动填充缺失值
# seed=1234 保证结果可重复
imp = mice(sleep,seed = 1234)

# 1. 对多重插补后的数据进行线性回归建模
# 因变量：Dream（做梦时长）
# 自变量：Span（寿命）+ Gest（妊娠期）
fit=with(imp,lm(Dream~Span+Gest))

# 2. 将多次插补的回归结果合并（pool = 汇总、融合）
pooled=pool(fit)

# 3. 查看合并后的回归结果（系数、显著性、R²等）
summary(pooled)


#妊娠期越长，做梦时间越短，且这种影响是显著的。
#寿命对做梦时间没有显著影响。
#term         estimate    系数      p.value   显著性
#1 (Intercept)  2.5986    截距     1.95e-14   ***
#2 Span        -0.0053    寿命     0.6558      不显著
#3 Gest        -0.0041    妊娠期   0.0093      ** 显著