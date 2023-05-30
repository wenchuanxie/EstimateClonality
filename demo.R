

# devtools::install_github('wenchuanxie/EstimateClonality')
# install.packages("../sequenza_3.0.0.tar.gz",repos=NULL,type='source')
install.packages("../STM_data/Estimate_Clonality_Package/EstimateClonality_1.0.tar.gz",repos=NULL,type='source')

library(sequenza) # 3.0
library(EstimateClonality) # 1.0
# 报错: could not find function "types.matrix"
# 经查: types.matrix 函数名在3.0的sequenza包中为baf.types.matrix
# 解决: 修改main.funxtions.r文件中的earlyORlate.strict函数
clonality.estimation(mutation.table.loc="./data/Input/BLCA.mutation.table.txt" ,
                     seg.mat.loc="./data/Input/tcga.blca.seg.hg19.rdata" ,
                     data.type='TCGA_BLCA' ,
                     TCGA.barcode="TCGA-BT-A42C" ,
                     ANALYSIS.DIR="demo/")
