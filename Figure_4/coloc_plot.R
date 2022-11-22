WD = getwd( )
setwd(WD)

source("mirror.R")

CHR = "8"
FID = "201"   # at the end of this code you can find the list of significant IDPs for both Chr 8 and 17

data <- read.csv(file=paste(WD , "/data/Chr_",CHR,"/myData_",FID,".csv",sep=""),head=TRUE,sep=",")

Data_Mirror <- data.frame(data)

save(Data_Mirror , file = "Data_Mirror.RData")

if (CHR == "3") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=3, START=43902386, END=45902386, SENTINEL="rs78238620",
         GENE_START=44803209, GENE_END=44914868,
         T2THRESH2=2.36e-6,
         TITLE="Chr 3, rs78238620 (rfMRI full correlation (ICA25 edge 144))")
} else if (CHR == "3_2") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=3, START=168481271, END=170481271, SENTINEL="rs12696304",
         T2THRESH2=2.36e-6,
         TITLE="Chr 3, rs12696304 (rfMRI full corelation (ICA25 edge 162))")
} else if (CHR == "4") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=4, START=88885086, END=90885086, SENTINEL="rs2013701",
         GENE_START=89647106, GENE_END=90032549,
         T2THRESH2=2.36e-6,
         TITLE="Chr 4, rs2013701 (Surface Area Inferior Temporal RH)")
} else if (CHR == "5") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=5, START=282414, END=2282414, SENTINEL="rs7725218",
         GENE_START=1253262, GENE_END=1295184,
         T2THRESH2=2.36e-6,
         TITLE="Chr 5, rs7725218 (Surface Area Fusiform RH)")
} else if (CHR == "5_2") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=5, START=168015479, END=170015479, SENTINEL="rs116483731",
         GENE_START=169010638, GENE_END=169031782,
         T2THRESH2=2.36e-6,
         TITLE="Chr 5, rs116483731 (ISOVF Fornix cres+Stria terminalis R)")
} else if (CHR == "6") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=6, START=6563232, END=8563232, SENTINEL="rs2076295",
         GENE_START=7541808, GENE_END=7586950,
         T2THRESH2=2.36e-6,
         TITLE="Chr 6, rs2076295 (rfMRI FC full correlation (ICA25 edge 42))")
} else if (CHR == "7") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=7, START=909479, END=2909479, SENTINEL="rs12699415",
         GENE_START=1855429, GENE_END=2272878,
         T2THRESH2=2.36e-6,
         TITLE="Chr 7, rs12699415 (rfMRI FC full correlation (ICA25 edge 25))")
} else if (CHR == "7_2") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=7, START=98630342, END=100630342, SENTINEL="rs2897075",
         T2THRESH2=2.36e-6,
         TITLE="Chr 7, rs2897075 (TBSS MD Cerebral Peduncle L)")
} else if (CHR == "8") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=8, START=119934133, END=121934069, SENTINEL="rs28513081",
         GENE_START=120885957, GENE_END=121063152,
         T2THRESH2=2.36e-6,
         TITLE="Chr 8, rs28513081 (FA Splenium of corpus callosum)")
} else if (CHR == "10") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=10, START=92271016, END=94271016, SENTINEL="rs537322302",
         GENE_START=93170096, GENE_END=93274586,
         T2THRESH2=2.36e-6,
         TITLE="Chr 10, rs537322302 (TBSS MO Genu of corpus callosum)")
} else if (CHR == "11") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=11, START=241232, END=2241215, SENTINEL="rs35705950",
         GENE_START=1244296, GENE_END=1283406,
         T2THRESH2=2.36e-6,
         TITLE="Chr 11, rs35705950 (rfMRI FC full correlation (ICA25 edge 177))")
} else if (CHR == "13") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=13, START=112534984, END=114534984, SENTINEL="rs9577395",
         GENE_START=113344643, GENE_END=113541482,
         T2THRESH2=2.36e-6,
         TITLE="Chr 13, rs9577395 (FAST Parietal opercular cortex)")
} else if (CHR == "15") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=15, START=39720542, END=41720542, SENTINEL="rs59424629",
         GENE_START=40697686, GENE_END=40728146,
         T2THRESH2=2.36e-6,
         TITLE="Chr 15, rs59424629 (rfMRI amplitudes (ICA100 node 19))")
} else if (CHR == "15_2") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=15, START=85097216, END=87097216, SENTINEL="rs62023891",
         GENE_START=85923802, GENE_END=86292586,
         T2THRESH2=2.36e-6,
         TITLE="Chr 15, rs62023891 (FIRST Pallidum L volume)")
} else if (CHR == "17") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=17, START=43214888, END=45214888, SENTINEL="rs2077551",
         #           T1THRESH1=5e-8, 
         T2THRESH2=2.36e-6,
         #           GENE_START=43971748, GENE_END=44105700,
         #           COLOURS=c("red", "grey20", "grey40", "grey60", "grey80", "grey90"),
         TITLE="Chr 17, rs2077551 (Surface Area Fusiform R)")
} else if (CHR == "19") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=19, START=3717672, END=5717672, SENTINEL="rs12610495",
         GENE_START=4675236, GENE_END=4724685,
         T2THRESH2=2.36e-6,
         TITLE="Chr 19, rs12610495 (TBSS OD Genu of corpus callosum)")
} else if (CHR == "20") {
  png(paste("MirrorPlot_",FID,".png",sep=""), height=5, width=10, units="in", res=500)
  mirror(Data_Mirror, CHR=20, START=61324391, END=63324391, SENTINEL="rs41308092",
         GENE_START=62289163, GENE_END=62328416,
         T2THRESH2=2.36e-6,
         TITLE="Chr 20, rs41308092 (rfMRI FC partial correlation (ICA25 edge 26))")
}

dev.off()

# Chr-17 ------------------------------
# 1191 : Area Fusiform R
# 527  : IDP_dMRI_TBSS_ICVF_Superior_fronto-occipital_fasciculus_R
# 454  : IDP_dMRI_TBSS_L3_Anterior_limb_of_internal_capsule_L
# 1129 : aparc-DKTatlas_lh_area_fusiform
# 503  : IDP_dMRI_TBSS_ICVF_Posterior_limb_of_internal_capsule_R
# 528  : IDP_dMRI_TBSS_ICVF_Superior_fronto-occipital_fasciculus_L
# 453  : IDP_dMRI_TBSS_L3_Anterior_limb_of_internal_capsule_R
# 508  : IDP_dMRI_TBSS_ICVF_Anterior_corona_radiata_L
# 262  : IDP_dMRI_TBSS_MD_Anterior_limb_of_internal_capsule_L
# 507  : IDP_dMRI_TBSS_ICVF_Anterior_corona_radiata_R
# 247  : IDP_dMRI_TBSS_MD_Genu_of_corpus_callosum
# 487  : IDP_dMRI_TBSS_ICVF_Genu_of_corpus_callosum
# 559  : IDP_dMRI_TBSS_OD_Posterior_corona_radiata_R
# 519  : IDP_dMRI_TBSS_ICVF_Cingulum_cingulate_gyrus_R
# 1197 : aparc-DKTatlas_rh_area_lingual
# 287  : IDP_dMRI_TBSS_MD_Superior_fronto-occipital_fasciculus_R
# 261  : IDP_dMRI_TBSS_MD_Anterior_limb_of_internal_capsule_R
# 382  : IDP_dMRI_TBSS_L1_Superior_longitudinal_fasciculus_L
# 504  : IDP_dMRI_TBSS_ICVF_Posterior_limb_of_internal_capsule_L
# 1195 : aparc-DKTatlas_rh_area_lateraloccipital
# 373  : IDP_dMRI_TBSS_L1_External_capsule_R
# 171  : IDP_SWI_T2star_left_putamen
# 574  : IDP_dMRI_TBSS_OD_Superior_longitudinal_fasciculus_L
# 502  : IDP_dMRI_TBSS_ICVF_Anterior_limb_of_internal_capsule_L
# 385  : IDP_dMRI_TBSS_L1_Uncinate_fasciculus_R
# 520  : IDP_dMRI_TBSS_ICVF_Cingulum_cingulate_gyrus_L
# 509  : IDP_dMRI_TBSS_ICVF_Superior_corona_radiata_R
# 381  : IDP_dMRI_TBSS_L1_Superior_longitudinal_fasciculus_R
# 525  : IDP_dMRI_TBSS_ICVF_Superior_longitudinal_fasciculus_R
# 9    : IDP_T1_SIENAX_white_unnormalised_volume
# 11   : IDP_T1_SIENAX_brain-unnormalised_volume
# 1133 : aparc-DKTatlas_lh_area_lateraloccipital
# 8    : IDP_T1_SIENAX_white_normalised_volume
# 518  : IDP_dMRI_TBSS_ICVF_External_capsule_L
# 278  : IDP_dMRI_TBSS_MD_External_capsule_L
# 172  : IDP_SWI_T2star_right_putamen
# 439  : IDP_dMRI_TBSS_L3_Genu_of_corpus_callosum
# 479  : IDP_dMRI_TBSS_L3_Superior_fronto-occipital_fasciculus_R
# 310  : IDP_dMRI_TBSS_MO_Anterior_limb_of_internal_capsule_L
# 517  : IDP_dMRI_TBSS_ICVF_External_capsule_R
# 1135 : aparc-DKTatlas_lh_area_lingual
# 374  : IDP_dMRI_TBSS_L1_External_capsule_L
# 1162 : aparc-DKTatlas_lh_thickness_inferiortemporal
# 391  : IDP_dMRI_TBSS_L2_Genu_of_corpus_callosum
# 10   : IDP_T1_SIENAX_brain-normalised_volume
# 1168 : aparc-DKTatlas_lh_thickness_middletemporal
# 268  : IDP_dMRI_TBSS_MD_Anterior_corona_radiata_L
# 510  : IDP_dMRI_TBSS_ICVF_Superior_corona_radiata_L
# 461  : IDP_dMRI_TBSS_L3_Superior_corona_radiata_R
# 357  : IDP_dMRI_TBSS_L1_Anterior_limb_of_internal_capsule_R

# Chr-08 ------------------------------
# 488  : ICVF Body of corpus callosum
# 487  : ICVF Genu of corpus callosum
# 509  : ICVF Superior corona radiata R
# 497  : ICVF Superior cerebellar peduncle R
# 495  : ICVF Inferior cerebellar peduncle R
# 489  : ICVF Splenium of corpus callosum
# 393  : L2 Splenium of corpus callosum
# 510  : ICVF Superior corona radiata L
# 441  : L3 Splenium of corpus callosum
# 525  : ICVF Superior longitudinal fasciculus R
# 500  : ICVF Cerebral peduncle L
# 392  : L2 Body of corpus callosum
# 1218 : Thickness Caudal anterior cingulate R
# 201  : FA Splenium of corpus callosum
# 531  : ICVF Tapetum R
# 269  : MD Superior corona radiata R
# 526  : ICVF Superior longitudinal fasciculus L
# 513  : ICVF Posterior thalamic radiation R
# 498  : ICVF Superior cerebellar peduncle L
