#lab3-2 删除重复行

# 1. 创建带重复行的数据框
df <- data.frame(
  ID = c(1, 2, 2),
  Animal = c("Dog", "Cat", "Cat"),
  Value = c(3, 5, 5)
)

# 查看原始数据（含重复）
print(df)

# 2. 去除完全重复的行
# unique() 自动保留唯一值，删除重复行
df_new <- unique(df)

# 查看去重后数据
print(df_new)

