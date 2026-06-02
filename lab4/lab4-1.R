#lab4-1

# 1. 调用 R 自带数据集 pressure（水蒸气温度与压力）
data(pressure)

# 2. 绘制散点图 + 标题 + 坐标轴
plot(pressure$temperature, pressure$pressure,
     main = "水蒸气温度与压力关系散点图",  # 标题
     xlab = "温度 (Temperature)",          # x轴
     ylab = "压力 (Pressure)",             # y轴
     pch = 19, col = "blue", cex = 1.2)    # 点样式、颜色、大小
