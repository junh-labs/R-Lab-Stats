#lab1-7
用 scan() 函数读取下列数据，并将它们放在列表中
# 数据格式：
# 1 Dog 3
# 2 Cat 5
# 3 Duck 7

# 使用 scan() 函数读取数据
# what 参数指定了每一行的数据结构：
# "" 代表字符型（对应动物名称），0 代表数值型（对应编号和数字）
animal_list <- scan("animal_data.txt", what = list(id = 0, name = "", value = 0), quiet = TRUE)

# 打印读取后的列表
print(animal_list)
