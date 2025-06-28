# HLA Phenotypes Association Analysis

HLA association analysis is indispensable for uncovering genetic factors linked to disease susceptibility and guiding precision medicine. The HLA association module in EAMHC provides a range of statistical tests—including Pearson’s chi-squared, Fisher’s exact, logistic or linear regression—and supports standard multiple-testing corrections: Bonferroni single-step p-values, Holm step-down, and two FDR procedures (Benjamini & Hochberg; Benjamini & Yekutieli). This module encompasses four main tasks:

1. **Data upload** and summary of HLA-typing at gene, allele, and population levels.  
2. **Allele-level association**—case/control comparisons with QQ, volcano, Manhattan plots, heatmaps, and allele tables.  
3. **Amino acid-level association**—residue histograms, positional comparisons, and association tables.  
4. **Zygosity analysis**—homozygous vs. heterozygous tests with bar plots and zygosity tables.

Interactive visualizations and downloadable tables/plots are provided. Example input/output files streamline adoption and interpretation.

---

## Workflow Steps

### 1. Launch Association Module  
Click **HLA Phenotypes Association** in the analysis menu, then **Start**.  
<div align="center">
  <img src="/figs/association/start.png" alt="Start Association">
</div>

### 2. Upload Data  
- Enter sample/task metadata (Sample ID, Project Name).  
- Upload **Allele file** (required) and **Covariates file** (optional).  
- Choose **Association Method** and **Multiple Testing Adjustment**.  
<div align="center">
  <img src="/figs/association/upload.png" alt="Upload Association">
</div>  
- View example inputs & reports at:  
  https://eamhc.deepomics.org/database  
<div align="center">
  <img src="/figs/association/demo_data.png" alt="Demo Association">
</div>  
- Submission triggers email updates for job start, progress, completion, or failure.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your registered email.  
<div align="center">
  <img src="/figs/association/query.png" alt="Query Association">
</div>

### 4. Download Results  
- **Summary report**  
  <div align="center">
    <img src="/figs/association/summary.png" alt="Summary">
  </div>  
- **Allele-level association**  
  <div align="center">
    <img src="/figs/association/allele_asso.png" alt="Allele-Level">
  </div>  
- **Amino acid-level association**  
  <div align="center">
    <img src="/figs/association/aa_asso.png" alt="Amino Acid-Level">
  </div>  
- **Zygosity analysis**  
  <div align="center">
    <img src="/figs/association/zyg.png" alt="Zygosity">
  </div>  
- **Full results** (tables & plots)  
  <div align="center">
    <img src="/figs/association/demo_data.png" alt="Association Results">
  </div>

---

## References

1. Raychaudhuri S., Sandor C., Stahl E.A., et al. Five amino acids in three HLA proteins explain most of the association between MHC and seropositive rheumatoid arthritis. *Nat. Genet.* 2012;44(3):291–296.  
2. Benjamini Y., Hochberg Y. Controlling the false discovery rate: a practical and powerful approach to multiple testing. *J. R. Stat. Soc. B* 1995;57(1):289–300.  
3. Benjamini Y., Yekutieli D. The control of the false discovery rate in multiple testing under dependency. *Ann. Statist.* 2001;29(4):1165–1188.  
4. Zhou F., Cao H., Zuo X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576