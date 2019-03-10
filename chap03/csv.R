library(ggplot2)
library(sqldf)

read.csv("Data/csv_exam.csv") -> csv_exam
sqldf("
        select distinct class
          from csv_exam
      ")

sqldf("
        select class, count(*), avg(math) as m,
                                avg(english) as e,
                                avg(science) as s
          from csv_exam
         group by class
      ")

qplot(factor(class), math, data = csv_exam, geom = "boxplot")
