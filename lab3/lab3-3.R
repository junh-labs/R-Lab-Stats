#lab3-3

# 1. 构建含缺失值的数据框
# 模拟学生数据：姓名、身高、体重
stu <- data.frame(
  姓名 = c("丁一","张三","李四","王五","赵六"),
  身高 = c(160,175,180,NA,158),  # 王五身高缺失
  体重 = c(50,60,65,NA,47)      # 王五体重缺失
)

# 查看原始数据（带缺失值）
print(stu)

# 2. 保留所有列都无缺失的行
# complete.cases() 判断每一行是否完整（无NA）
stu_clean <- stu[complete.cases(stu), ]

# 查看清洗后的数据（无缺失值）
print(stu_clean)