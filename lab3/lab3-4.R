#lab3-4

# 字符去空格（清洗文本数据）
# R 自带，不用装任何包！
s <- " A B C 123 "
trimmed_s <- trimws(s)
print(trimmed_s)




# 创建两个结构相同的数据框
df1 <- data.frame(ID=c(1,2), 品牌=c("Apple","Apple"), 名称=c("Ipad Mini","Iphone"))
df2 <- data.frame(ID=c(11,12), 品牌=c("小米","小米"), 名称=c("小米手机","红米手机"))
df1
df2

# 使用 rbind() 按行合并
df_all <- rbind(df1, df2)

# 输出合并后的完整数据框
print(df_all)