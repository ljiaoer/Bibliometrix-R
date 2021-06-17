#标题、摘要提取关键词：termExtraction()

library(bibliometrix)
library(bibliometrixData)

#读取数据
data("scientometrics")

# 1. 从标题提取术语
##keep.terms : 是一个字符向量。它包含“由两个或多个术语组成”的复合词列表，以便在术语提取过程中保持其原始形式。
keep_terms <- c("co-citation analysis","bibliographic coupling")  #保留术语的形式
#术语提取
scientometrics <- termExtraction(scientometrics,Field = "TI",
                                 remove.numbers = TRUE,
                                 remove.terms = NULL,
                                 keep.terms = keep_terms,
                                 verbose = TRUE)
#从前五篇论文中提取术语
scientometrics$TI_TM[1:5]



#2. 从摘要提取术语
remove_terms<-c("analysis","bibliographic") #要剔除的术语
#术语提取
scientometrics <- termExtraction(scientometrics,Field = "AB",
                                 stemming = TRUE,
                                 language = "english",
                                 remove.numbers = TRUE,
                                 remove.terms = remove_terms,
                                 keep.terms = NULL,
                                 verbose = TRUE)



#3. 从补充关键词位置提取术语
#synonyms : 是一个字符向量。每个元素都包含一个同义词列表，以“；”分隔，这些同义词将合并为一个术语（vector元素中包含的第一个单词
#相似术语合并
synonyms<-c("citation;citation analysis","h-index;index;impact factor") 
#术语提取
scientometrics <- termExtraction(scientometrics,Field = "ID",
                                 synonyms = synonyms,
                                 verbose = TRUE)
#scientometrics$ID_TM[1:20]
write.csv(x = scientometrics,file = "scientometrics.csv")
