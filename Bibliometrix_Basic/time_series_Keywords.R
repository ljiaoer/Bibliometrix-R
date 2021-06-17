#知识单元时序分布：KeywordGrowth(M,Tag=“ID”,sep=";",top=10,cdf =TRUE) cdf为计算累计频次

library(bibliometrix)
library(bibliometrixData)

data("scientometrics")
# 计算关键词的时间序列分布情况
topKW = KeywordGrowth(scientometrics,Tag="ID",sep=";",top=10,cdf =TRUE)
#绘图
library(reshape2)
library(ggplot2)
DF = melt(topKW,id="Year")
ggplot(DF,aes(Year,value,group = variable,color = variable)) + geom_line(size = 1)


# 计算作者的时间序列分布情况
topAU = KeywordGrowth(scientometrics,Tag="AU",sep=";",top=10,cdf =TRUE)
#绘图
AU= melt(topAU,id = "Year")
ggplot(AU,aes(Year,value,group = variable,color = variable)) + geom_line(size = 1)

