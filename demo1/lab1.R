# ==============================
# 实验1 R语言入门操作 修正完整版
# 已修复所有报错：&&向量报错、重复变量名、路径报错、维度报错等
# ==============================

# ========== 1 赋值操作 ==========
# 1.1 数值赋值
a <- 100
a
b = 100
b
100 -> c1   # 修复：不用c做变量名（c是内置函数，会冲突）
c1

assign("x",100)
x

# 查看工作空间变量
ls()

# 1.2 向量赋值
# 基础向量
x <- c(12.1,11.9,12.0,12.3,11.8)
x

y <- c(x,1,x)
y

# 步长为1的等差数列
(a1 <- 1 : 10)
(b1 <- 1.1:10)
(c1 <- 10:1)

# 任意步长 seq()
seq(1,10)
seq(10)
seq(2,10,by = 2)
seq(1,10,by = 2)
seq(1,10,length.out = 5)
seq(1,10,along.with = c(1,3,5))

# rep重复函数
v1 = 1 : 4
rep(v1 , times = 2)
rep(v1 , length.out = 10)
rep(v1 , each = 2)
rep(v1 , c(1 : 4))

# 向量索引
xv <- 1 : 10
xv[1]
xv[1 : 3]
xv[c(1,4,7)]

# 1.3 删除和修改元素
x2 <- 1 : 10
x2[ - 3 ]
x2[ - (1 : 4) ]
x2[ - c(3,6,9) ]

# 修改元素
x2[ 3 ] <- 18
x2
x2[ 1 : 3 ] <- c(10,20,30)
x2
x2[ c(3,6,9) ] <- c(12,24,36)
x2

# ========== 2 算术操作 ==========
9 %% 4
(1 : 10) %% 2

9 %/% 4
(1 : 10) %/% 2

2 ^ 3
(1 : 10)^3

sqrt(9)
sqrt(1 : 10)
# 负数开方保留演示（警告正常，无需改）
sqrt(- 9)

# 对数指数
log(16,2)
log(x = 16, base = 2)
log(x = c(2,4,8,16),base = 2)
log2(16)
log10(100)
exp(1)
exp(1:3)

# ========== 3 比较运算符及逻辑操作 ==========
3 == 5

# 向量长度不等比较（保留警告，原样演示）
a_vec <- 1:10
b_vec = c(1,3,5)
a_vec == b_vec

# 逻辑运算 修复：禁用向量用&&/||，只标量用
! TRUE
x_log <- c(T,T,F,T,F)
! x_log

# 向量只能用 &  |
xL <- c(T,T,F)
yL <- c(F,T,F)
xL & yL
xL | yL

# 【修复报错】&& || 只允许单个逻辑值，不能用向量
# 原教材 x && y 会报错，改成标量演示：
xL[1] && yL[1]
xL[1] || yL[1]

# 异或xor
xor(0,1)
xor(xL,yL)

# all any
x_na <- c(1,3,5,7,9,NA)
all(x_na > 5,na.rm = T)
any(x_na > 5, na.rm = F)
which(x_na > 5)

logical(5)

# ========== 4 R语言数据结构 ==========
# 4.1 数组array
(x_arr <- array(1:12,dim = c(3,4)))

array(rep(T,6),dim = c(2,3))
array(rep("a",6),dim = c(2,3))

# 带维度名数组
x_dim = array(rpois(6,10),dim = c(2,3),
              dimnames = list(c("male","female"),c("apple","banana","pear")))
x_dim

# 三维数组
x_3d = array(rpois(24,10),dim = c(2,3,4),
             dimnames = list(c("male","female"),
                             c("apple","banana","pear"),
                             c("Mon","Tue","Wed","Thu")))
x_3d

# 数组引用
A_arr <- array(data = 1:36,dim = c(3,3,4))
A_arr[1,2,3]
A_arr[1,c(1,2),3]
A_arr[1,,3]
A_arr[1,,]

# 空向量
vector(mode = "numeric", length = 5)

# 矩阵matrix
m1 = matrix(data = 1:6,nrow = 2,ncol = 3,byrow = T); m1
m2 = matrix(data = 1:6,nrow = 2,ncol = 3,byrow = F); m2

# 矩阵运算
A_mat <- B_mat <- matrix(data = 1:9, nrow = 3, ncol = 3)
A_mat * B_mat
A_mat %*% B_mat
t(A_mat)

# 可逆矩阵求逆
A_inv <- matrix(data = 1:4, nrow = 2, ncol = 2)
solve(A_inv)
eigen(A_inv)

# 4.2 列表list
x_list <- list(fruit = c("apple","banana","pear"),
               price = c(1,1,1.5),
               market = c("newabest"))
x_list

x_list[[1]]
x_list[[1]][2]
x_list[["fruit"]]
x_list$fruit
x_list$fruit[2]

# 修改列表
x_list$price[1] <- 1.2
x_list

# 4.3 数据框data.frame
fruit = c("apple","banana","pear")
price = c(1,1,1.5)
buy = c(TRUE,FALSE,FALSE)
df = data.frame(fruit,price,buy)
df

df2 = data.frame(shuiguo = fruit, jiage = price, goumai = buy)
row.names(df2) <- c("item1", "item2", "item3")
df2

df[1,]
df[[1]]
df$price

# ========== 5 数据导入与导出（修复路径报错，全部用相对路径，不报错） ==========
# 5.1 save load
a_save <- 1:10
save(a_save,file = "dumData.Rdata")
rm(a_save)
load("dumData.Rdata")
print(a_save)

# 5.2 write.table read.table
# 生成演示文本
score_txt <- data.frame(
  name = c("zhangsan","lisi","wangwu","dingliu","zhouqi"),
  no = 1:5,
  math = c(90,85,95,100,79),
  English = c(87,78,90,98,60),
  history = c(97,80,93,99,71)
)
write.table(score_txt,"score.txt",row.names = F)

score1 <- read.table("score.txt")
score1
score2 <- read.table("score.txt", header = T)
score2

# scan读取
write.table(round(runif(15,45,75),1),"weight.txt",row.names=F,col.names=F)
weight <- scan("weight.txt")
weight
is.vector(weight)

# 手动scan交互（注释掉，避免运行卡住）
# x_scan <- scan()

# write保存矩阵
A_wr <- matrix(1:25,ncol = 5)
write(A_wr, file = "write_a_data.txt", ncolumns = 6)

# 体检数据框导出
Name = c("Alice","Becka","James","Jeffrey","John")
Sex = c("F","F","M","M","M")
Age = c(13,13,12,13,12)
Height = c(56.5,65.3,57.3,62.5,59.0)
Weight = c(84.0,98.0,83.0,84.0,99.5)
tijian <- data.frame(Name,Sex,Age,Height,Weight)
write.table(tijian, file = "tijian.txt")

# 5.3 csv 读写
var1 <- 1:5
var2 <- (1:5)/10
var3 <- c("R","and","DataMining","Examples","Case Studies")
a_csv <- data.frame(var1,var2,var3)
names(a_csv) <- c("VariableInt","VariableReal","VariableChar")
write.csv(a_csv,"data_1_01.csv",row.names = FALSE)

b_csv <- read.csv("data_1_01.csv")
b_csv

# 5.4 SPSS/Excel 
# library(foreign)
# library(Hmisc)
# library(RODBC)