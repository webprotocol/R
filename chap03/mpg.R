library(ggplot2)
library(sqldf)
x = c("a", 'a', 'b', 'c', 'd', "d")

qplot(x)

#
# 1. vector
# 2. matrix
# 3. array
# 4. list
# 5. data.frame
# 6. factor
#
mpg
sqldf("
      select distinct manufacturer 
        from mpg
      ")
mpg -> my_mpg
sqldf("
        select count(*)
          from my_mpg
      ")
# 제조사별 평균 도시연비와 고속도록 연비를 SQL를
# 사용해서 분석하시고(구하시오)
sqldf("
        select manufacturer, round(avg(cty), 2) as m_cty, avg(hwy) as m_hwy
          from my_mpg
         group by manufacturer
         order by avg(cty) desc
      ") -> mpg_ctyhwy_mean

mpg_ctyhwy_mean
qplot(mpg_ctyhwy_mean$manufacturer, mpg_ctyhwy_mean$m_cty)

mpg_ctyhwy_mean$m_cty


mpg$hwy

qplot(mpg$hwy)
table(mpg$drv)
qplot(mpg$drv)

str(mpg)



