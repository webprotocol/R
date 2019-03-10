library(ggplot2)
library(sqldf)
library(readxl)

excel_exam = readxl::read_excel("Data/excel_exam.xlsx")

str(excel_exam)
#  class  math  english science
#   1      70      99      85
#   2      87
#   3
#   4
#   5

sqldf("
        select class, max(math), max(english)
          from excel_exam
         group by class
      ")
