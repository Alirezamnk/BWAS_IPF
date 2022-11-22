# Brain-Wide Association Study

This repository contains scripts to perform Brain-Wide Association Study (BWAS) to find the association between brain imaging-derived phenotypes and with idiopathic pulmonary fibrosis genetic risk, as descibed in this paper: [A. R. Mohammadi-Nejad, R. J. Allen, L. Kraven, O. C. Leavy, R. G. Jenkins, D. Auer, L. V. Wain, S. N. Sotiropoulos, “Mapping brain endophenotypes associated with idiopathic pulmonary fibrosis genetic predisposition”, eBioMedicine, 2022][paper-eBioMed-link].

## Code Overview

Figures in our paper can be regenerated using the codes that has been assigned for each figure (Figures 2, 3, 4, and 5).

### Figure 2. Manhattan plot of the BWAS outcomes of 17 known IPF variants using UK Biobank imaging cohort (S=32,431)
A jupyter notebook has been provided to generate Figure 2 (`Figure_2.ipynb`). Inside the data folder, there are 17 files which each of them is assigned to each IPF genetic variant (`IPF_XX.txt`). The list of all the IPF genetic variants is available [here][IPF-variant-list].
These files are the output of the BWAS generated by PLINK v2.0. The dimensions of each file is the Number of IDPs (1,248) x 10. The columns are 'BETA', 'T_STAT', 'UNADJ', 'GC', 'BONF', 'HOLM', 'SIDAK_SS', 'SIDAK_SD', 'FDR_BH', and 'FDR_BY' respectively. You can find more information about each column in PLINK's website. The list of the IDPs is available [here][IDP-list]. By running this code, the results will be a figure like this:

![Figure_2_orig](https://github.com/Alirezamnk/BWAS_IPF/blob/main/global/Figure_2.png)

### Figure 3. The association of the DEPTOR IPF variant with brain IDPs
To generate Figure 3a, the user needs to run the jupyter notebook provided for this figure (`Figure_3.ipynb`). User should specify the IPF variant number by changing the `VAR` variable in line 12. Same as Figure 2, the data folder contains 17 files (`IPF_XX.txt`) which each of them contains the summary statistics of the BWAS for each single IPF variants. These files are exactly the same as the files that have been described in Figure 2. In addition, for each variant there is a file known as `coloc_XX.txt`. The `coloc_XX.txt` file is a vector and its dimension is the number of IDPs (1,248) x 1. The value in each row can take '1' or '4'. Here, '4' means that that IDP has been co-localised against IPF risk which has been described in Figure 4. In addition, the data folder of this figure contains another file known as `ind_type.txt`. This file shows each IDP is categorised in which group IDP. By running this code, the results will be a figure like this:

![Figure_3_orig](https://github.com/Alirezamnk/BWAS_IPF/blob/main/global/Figure_3a.png)

We can use the same code to generate the Manhattan plot of chromosome 17 IPF variant presented in Figure 3a of the paper.

### Figure 4. Co-localisation of the two most significantly associated IDPs with chromosome 8 (region around the DEPTOR gene), against IPF risk.
The Miamai plots of this paper have been generated by `coloc_plot.R` code. The user needs to change two lines of this code to generate the coloc plot for different chromosomes IPF varints and also different IDPs. In line 6 of this code user can determine the chromosome number by changing the `CHR` variable. The chromose number of each IPF variants is in accordance of this [file][IPF-variant-list]. In addition, user can change the `FID` variable in line 7 to change the IDP number. The list of the most significant IDPs in both chromosome 8 and chromosome 17 IPF variants have been provided at the end of this code. Here, in the data folder, we have two folders for Chr 8 and Chr 17 IPF variants. The `coloc_plot.R` code will read the `myData_XXX.csv` file based on the pre-specified chromosome number and the IDP number. This file has 6 columns which are chr, pos, rsid, trait1_p, trait2_p, and r2. The number of rows can vary chromosome by chromosome based on the discussion we had in paper. Here, the trait 1 and trait 2 are the variables that have been discussed in the paper.
The second code that we should run to generate the COLOC posterior probability is `Colocalisation.R`. Same as the `coloc_plot.R` code, you should specify the chromosome number of the IPF variant adn also the IDP number by changing the `CHR` and `FID` numbers in lines 6 and 7. This code will read the GWAS summary statistics of trait 1 (`GWAS.csv`) and trait 2 (`BWAS_XXX.csv`) and will calculate the PP.H0, PP.H1, PP.H2, PP.H3, and PP.H4. By running these two codes, the results will be a figure like this:

![Figure_4_orig](https://github.com/Alirezamnk/BWAS_IPF/blob/main/global/Figure_4.png)

### Figure 5. Secondary analysis.

## Usage

## Requirements

<!-- References -->

[paper-eBioMed-link]: https://www.sciencedirect.com/science/article/pii/S2352396422005382
[IPF-variant-list]: https://github.com/Alirezamnk/BWAS_IPF/blob/main/global/IPF_variants.png
[IDP-list]: https://www.sciencedirect.com/science/article/pii/S2352396422005382
