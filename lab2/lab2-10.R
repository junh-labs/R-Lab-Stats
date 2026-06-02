#lab2-10
#按照函数的定义，运用递归算法编写计算函数n!

# 定义计算阶乘的递归函数
factorial_recursive <- function(n) {
  # 1. 设定递归的终止条件（基准情形）
  if (n == 0 || n == 1) {
    return(1)
  } else {
    # 2. 递归调用：自己调用自己
    return(n * factorial_recursive(n - 1))
  }
}

# 测试：计算 5 的阶乘
print(factorial_recursive(5))  # 结果应该是 120
