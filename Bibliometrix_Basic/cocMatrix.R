#二维网络分析（矩阵行为论文，列为知识单元）：
#cocMatrix(M,field = "AU",type = "sparse",sep=";") type为矩阵类型，field为要分析的字段
## 获取本地数据的方式
#file <- c(“file1.txt”,“file2.txt”, …)


setwd("D:/program/Bibliometrix-R/Bibliometrix_Basic")

library(bibliometrix)
#读取本地数据
D <- c("D:/program/Bibliometrix-R/Bibliometrix_Basic/data/data_501-917.txt","D:/program/Bibliometrix-R/Bibliometrix_Basic/data/data_1-500.txt")
#数据转化
CVdata<-convert2df(D,dbsource = "isi",format = "plaintext")

#计算文献x作者矩阵
WA<-cocMatrix(CVdata,Field = "AU",type="sparse",sep = ";")
#将文献x作者矩阵转换为dataframe
WA_dataframe = as.data.frame.matrix(WA)

#计算二维矩阵某列的数值总数
sort(Matrix::colSums(WA),decreasing = TRUE)[1:20]


