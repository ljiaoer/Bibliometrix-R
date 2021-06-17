#引文信息分析：citation(M,field = "article",sep=";")

library(bibliometrix)
library(bibliometrixData)

data("scientometrics")

#对被引文献的分析
CR <- citations(scientometrics,field = "article",sep = ";")
CR$Cited[1:2] # 文献被引频次
CR$Year[1:2] #被引文献发表时间？
CR$Source[1:2] #被引文献来源？

#对被引作者信息分析
CR_AU <- citations(scientometrics,field = "author",sep = ";")
CR_AU$Cited[1:2]
