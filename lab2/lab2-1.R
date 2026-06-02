#lab2-1
# 根据输入的数据，计算均值，方差，最大值，最小值

# 1. 准备输入数据
data_input <- c(12, 15, 18, 24, 30, 35, 42, 50, 55, 60)

# 2. 计算各项统计指标
data_mean <- mean(data_input)       # 均值
data_var <- var(data_input)         # 方差 (R默认计算样本方差，分母为 n-1)
data_max <- max(data_input)         # 最大值
data_min <- min(data_input)         # 最小值

# 3. 格式化输出结果
cat("--- 数据统计分析报告 ---\n")
cat("数据内容:", data_input, "\n")
cat("均值 (Mean):", data_mean, "\n")
cat("方差 (Variance):", data_var, "\n")
cat("最大值 (Max):", data_max, "\n")
cat("最小值 (Min):", data_min, "\n")