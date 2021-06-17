#Altmetric信息分析：altmetrics()

library(bibliometrix)
library(bibliometrixData)
library(rAltmetric)

# 获取论文《Bibliometrics: The citation game》的Altmetric信息
altmetrics(doi = "10.1038/510470a")

# 书籍《Safer Healthcare》的Altmetric信息
ib <- altmetrics(isbn = "978-3-319-25557-6")
ib


