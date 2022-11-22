# Brain-Wide Association Study

This repository contains scripts to perform Brain-Wide Association Study (BWAS) to find the association between brain imaging-derived phenotypes and with idiopathic pulmonary fibrosis genetic risk, as descibed in this paper: [A. R. Mohammadi-Nejad, R. J. Allen, L. Kraven, O. C. Leavy, R. G. Jenkins, D. Auer, L. V. Wain, S. N. Sotiropoulos, “Mapping brain endophenotypes associated with idiopathic pulmonary fibrosis genetic predisposition”, eBioMedicine, 2022][paper-eBioMed-link].

## Code Overview

Figures in our paper can be regenerated using the codes that has been assigned for each figure (Figures 2, 3, 4, and 5).

### Figure 2. Manhattan plot of the BWAS outcomes of 17 known IPF variants using UK Biobank imaging cohort (S=32,431)
A jupyter notebook has been provided to generate Figure 2 (Figure_2.ipynb). Inside the data folder, there are 17 files which each of them is assigned to each IPF genetic variant (IPF_XX). The list of all the IPF genetic variants is available [here][IPF-variant-list].
These files are the output of the BWAS generated by PLINK v2.0. The dimensions of each file is the Number of IDPs (1,248) x 10. The columns are 'BETA', 'T_STAT', 'UNADJ', 'GC', 'BONF', 'HOLM', 'SIDAK_SS', 'SIDAK_SD', 'FDR_BH', and 'FDR_BY' respectively. You can find more information about each column in PLINK's website. The list of the IDPs is available [here][IDP-list].

### Figure 3. The association of the DEPTOR IPF variant with brain IDPs

### Figure 4. Co-localisation of the two most significantly associated IDPs with chromosome 8 (region around the DEPTOR gene), against IPF risk.

### Figure 5. Secondary analysis.

## Usage

## Requirements

<!-- References -->

[paper-eBioMed-link]: https://www.sciencedirect.com/science/article/pii/S2352396422005382
[IPF-variant-list]: https://www.sciencedirect.com/science/article/pii/S2352396422005382
[IDP-list]: https://www.sciencedirect.com/science/article/pii/S2352396422005382
