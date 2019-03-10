#
# 삼각형 출력 로직
#
# 1.
for (i in 0:4) {
  for (j in 0:4) {
    if (i >= j)
      cat("*")
    else
      cat(" ")
  }
  cat("\n")
}

num = 100
num2 = 200
