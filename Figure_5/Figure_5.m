% The aim of this code is to do mediation analysis based on BWAS subjects
% 
% Alirezamnk 11/2021

close all
clear
clc

% ------------------------------------------------------------------------------------------------------------------------
% TO-BE-EDITED: Replace the below with your own
% ------------------------------------------------------------------------------------------------------------------------
In_mat_files   = 'Specify appropriate path';
datadir          = 'Specify appropriate path'; 
plink_path    = 'Specify appropriate path';
out_dir          = 'Specify appropriate path';
% ------------------------------------------------------------------------------------------------------------------------

% Load the original data

% The subject IDs that has been used for BWAS
KG_IDs = load([datadir '/F_KG_IDs.txt']);

% The subject IDs of the original imaging UKB
data = load([In_mat_files '/IDs.mat']);
IDs = data.varsSUBS;

% The whole list of 1248 IDPs used for BWAS
data = load([datadir '/IDP_FS_select.mat']);
IDPs = data.IDP_FS_select;

[~ , ~ , KG] = intersect(KG_IDs , IDs);

% Load the covariates
COVAR = readmatrix([datadir '/Gen_covariates.txt']);

% Load the genotyping information of Chr 8 IPF variant
data = readmatrix([plink_path '/Chr_8_recodeA_32431.txt']);
[~ , grotI , grotJ] = intersect(KG_IDs , data(: , 1));
grot(grotI , :) = data(grotJ , :);
Chr8 = grot;

% Load the FVC info from UKB
data = readmatrix([In_mat_files '/FID_20151_IM_processed.txt']);
[~ , grotI , grotJ] = intersect(IDs , data(: , 1));
FVC_Best(grotI , :) = data(grotJ , :);

clear data datadir In_mat_files grot* plink_path
% --------------------------------------------------------------------------
% 1- Extract the Mediators
% 2- Exclude subjects that have NaN in colocalised IDPs

Mediators = [FVC_Best(KG , 2)];

Mediators_sub = (sum(isnan(Mediators) , 2) == 0);
Mediators_red = Mediators(Mediators_sub , :);
KG_Mediators = KG(Mediators_sub);

clear Mediators_*
% --------------------------------------------------------------------------
% 1- Extract the Genotypes
% 2- Exclude subjects that have NA in their genotypes

IPF = Chr8(: , 7);

IPF_sub = (sum(isnan(IPF) , 2) == 0);
IPF_red = IPF(IPF_sub , :);
KG_IPF = KG(IPF_sub);

clear IPF_*
% --------------------------------------------------------------------------
% 1- Find the colocalised IDPs
% 2- Exclude subjects that have NaN in colocalised IDPs

% 201  : IDP_dMRI_TBSS_FA_Splenium_of_corpus_callosum
% 392  : IDP_dMRI_TBSS_L2_Body_of_corpus_callosum
% 393  : IDP_dMRI_TBSS_L2_Splenium_of_corpus_callosum
% 441  : IDP_dMRI_TBSS_L3_Splenium_of_corpus_callosum
% 487  : IDP_dMRI_TBSS_ICVF_Genu_of_corpus_callosum
% 488  : IDP_dMRI_TBSS_ICVF_Body_of_corpus_callosum
% 489  : IDP_dMRI_TBSS_ICVF_Splenium_of_corpus_callosum
% 495  : IDP_dMRI_TBSS_ICVF_Inferior_cerebellar_peduncle_R
% 497  : IDP_dMRI_TBSS_ICVF_Superior_cerebellar_peduncle_R
% 498  : IDP_dMRI_TBSS_ICVF_Superior_cerebellar_peduncle_L
% 500  : IDP_dMRI_TBSS_ICVF_Cerebral_peduncle_L
% 509  : IDP_dMRI_TBSS_ICVF_Superior_corona_radiata_R
% 513  : IDP_dMRI_TBSS_ICVF_Posterior_thalamic_radiation_R
% 525  : IDP_dMRI_TBSS_ICVF_Superior_longitudinal_fasciculus_R
% 526  : IDP_dMRI_TBSS_ICVF_Superior_longitudinal_fasciculus_L
% 531  : IDP_dMRI_TBSS_ICVF_Tapetum_R
% 1218: aparc-DKTatlas_rh_thickness_caudalanteriorcingulate

COLOC_Idx = [201 , 392 , 393 , 441 , 487 , 488 , 489 , 495 , 497 , 498 , 500 , 509 , 513 , 525 , 526 , 531 , 1218];

COLOC = IDPs(: , COLOC_Idx);

COLOC_sub = ((sum(isnan(COLOC) , 2)) == 0);
COLOC_red = COLOC(COLOC_sub , :);
KG_COLOC = KG(COLOC_sub);

clear COLOC_*

% ------------------------------------------------------------------------------------------------------------------------
% Find subjects which have all COLOC, IPF, and Mediator

ID_IPF  = IDs(KG_IPF);
ID_COLOC = IDs(KG_COLOC);
ID_Mediators  = IDs(KG_Mediators);

[IDs_COM , ~ , ~] = intersect(ID_IPF , ID_COLOC);
[IDs_COM , ~ , ~] = intersect(IDs_COM , ID_Mediators);

[~ , groti , ~] = intersect(IDs(KG) , IDs_COM);

X = IPF(groti , :);
Y = COLOC(groti , :);
M = Mediators(groti , :);
Y = Y - mean(Y , 1);
M = M - mean(M , 1);
COV = COVAR(groti , :);

clear grot* ID_

% ------------------------------------------------------------------------------------------------------------------------
% Do mediation analysis

[paths, stats] = mediation(X, Y(: , 17), M, 'covs', COV(: , [3 : 27]), 'verbose' , ...
                         'names', {'IPF risk' 'IDPs' 'FVC, Best measure'});
mediation_path_diagram(stats)
  