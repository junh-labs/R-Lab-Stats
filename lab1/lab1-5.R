#lab1-5
#文件读写操作
# 用 read.table() 读取该文件
# 写成 Excel 能打开的 CSV 文件

# 1. 将数据写入文本文件 (students.txt)
# row.names = FALSE 表示不写入行号（1,2,3...）
write.table(students, file = "students.txt", row.names = FALSE, fileEncoding = "UTF-8")
print("已成功将数据写入 students.txt")

# 2. 用 read.table() 读取该文件
# header = TRUE 表示第一行是表头
students_new <- read.table("students.txt", header = TRUE, fileEncoding = "UTF-8", stringsAsFactors = FALSE)

print("从文本文件读取的数据：")
print(students_new)

# 3. 写成 Excel 能打开的 CSV 文件
# 这里使用 write.csv，它默认就是用逗号分隔，Excel 可以直接打开
write.csv(students_new, file = "students.csv", row.names = FALSE, fileEncoding = "UTF-8")
print("已成功生成 students.csv")