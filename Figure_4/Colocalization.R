WD = getwd( )
setwd(WD)

library(coloc)

CHR = "8"
FID = "201"
data <- read.csv(file=paste(WD,"/data/Chr_",CHR,"/BWAS_",FID,".csv",sep=""),head=TRUE,sep=",")
BWAS <- data.frame(data)

data <- read.csv(file=paste(WD,"/data/Chr_",CHR,"/GWAS.csv",sep=""),head=TRUE,sep=",")
GWAS <- data.frame(data)

gwas_n <- 11259
bwas_n <- 32431

res <- coloc.abf(dataset1=list(beta=GWAS$BETA_1, varbeta=GWAS$var_1, N=gwas_n, type="cc", s=0.2, MAF=GWAS$MAF_1),
                 dataset2=list(beta=BWAS$BETA_2, varbeta=BWAS$var_2, N=bwas_n, type="quant", MAF=BWAS$MAF_2))
#head(res)