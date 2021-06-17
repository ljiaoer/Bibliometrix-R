
library(bibliometrix)
library(bibliometrixData)

#读取数据
data("scientometrics")

#方法一：科学计量分析（整体描述性分析）
results<-biblioAnalysis(scientometrics)
#结果呈现
#参数k 为Top k的排名；参数pause 是逻辑值，FALSE显示所有可用结果，TRUE仅显示结果概述
summary(results,k=10,pause =FALSE)

#方法二：通过tableTag函数对特定字段进行分析
#标准格式：tableTag(M,Tag = "AU",sep = ";")   M为数据集，Tag为与wos格式数据对应的字段
#data("scientometrics")
Tab <- tableTag(scientometrics,Tag = "DE",sep = ";")
Tab[1:10]




