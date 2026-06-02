#lab4-2
# 数据集 VADeaths：弗吉尼亚1940年死亡率数据

# 查看数据结构（可选）
VADeaths

# --------------------
# (1) 按年龄分组 死亡率饼图
# --------------------
# 按年龄求平均死亡率
age_avg <- colMeans(VADeaths)

# 绘制饼图
pie(age_avg,
    main = "按年龄分组死亡率饼图",  # 标题
    col = c("lightblue","lightgreen","orange","pink"), # 颜色
    labels = names(age_avg))       # 年龄标签

# --------------------
# (2) 按人口性质分组 死亡率饼图
# --------------------
# 按人群（农村男、农村女、城市男、城市女）求和
pop_sum <- rowSums(VADeaths)

# 绘制饼图
pie(pop_sum,
    main = "按人口性质分组死亡率饼图", # 标题
    col = c("red","blue","green","purple"),
    labels = names(pop_sum))         # 人群标签