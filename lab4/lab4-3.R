#lab4-3
# 药物测试效果数据
count <- c(42, 14, 28)          # 无效、好转、治愈人数
label <- c("无效", "有所好转", "治愈")  # 分组名称
color <- c("red", "yellow", "green") # 颜色：红、黄、绿

# 绘制条形图
barplot(count,
        names.arg = label,   # 条形标签
        col = color,         # 分别上色
        main = "药物治疗效果条形图", # 标题
        xlab = "治疗效果",    # X轴
        ylab = "人数")        # Y轴