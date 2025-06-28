# Imputation & Phasing Module

Accurate HLA imputation and phasing play pivotal roles in population-based genetic studies, enabling the identification of fine-scale variation among diverse groups. A population-specific reference panel further enhances accuracy in genotype calling and phasing, particularly for East Asian populations, by tailoring the underlying assumptions to their unique haplotype structures. To accommodate diverse analytical needs, we offer three flexible modes:

1. **Imputation-only**  
   – Input: pre-phased VCF with missing MHC genotypes  
   – Tool: beagle5  

2. **Phasing-only**  
   – Input: complete sample genotypes in VCF  
   – Tools: SHAPEIT4, Eagle2, beagle5  

3. **Simultaneous Imputation & Phasing**  
   – Input: VCF with missing loci  
   – Pipeline: pre-phase with SHAPEIT4/Eagle2/beagle5 → impute with beagle5  

All three options include example input/output files and reports to guide users through the process.

---

## Workflow Steps

### 1. Launch Imputation & Phasing Module  
Click **Imputation & Phasing** in the analysis menu, then **Start**.  
<div align="center">
  <img src="/figs/imputation_phase/start.png" alt="Start Imputation & Phasing">
</div>

### 2. Upload Data  
- Enter sample/task metadata (Sample ID, Project Name).  
- Select mode: **Only Imputation**, **Only Phasing**, or **Imputation + Phasing**.  
<div align="center">
  <img src="/figs/imputation_phase/upload.png" alt="Upload Imputation & Phasing">
</div>  
- View sample inputs & example reports for each mode at:  
  https://eamhc.deepomics.org/database  
<div align="center">
  <img src="/figs/imputation_phase/demo_data.png" alt="Demo Imputation & Phasing">
</div>  
- Upon submission, you’ll receive email notifications for job start, progress, completion, or failure.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your registered email to view all jobs.  
<div align="center">
  <img src="/figs/imputation_phase/query.png" alt="Query Imputation & Phasing">
</div>

### 4. Download Results  
- **Sample Report** 
<div align="center">
  <img src="/figs/imputation_phase/impute_viz.png" alt="Allele Report">
</div>  
- **Imputed / Phased Results** in VCF and summary report  
<div align="center">
  <img src="/figs/imputation_phase/demo_data.png" alt="Results Download">
</div>

---

## References

1. Zhou F., Cao H., Zuo X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576  
2. Browning B.L., Browning S.R. Genotype imputation with millions of reference samples. *Am. J. Hum. Genet.* 2016;98(1):116–126.  
3. Loh P.-R., Palamara P.F., Price A.L. Fast and accurate long-range phasing in a UK Biobank cohort. *Nat. Genet.* 2016;48(7):811–816.  
4. Delaneau O., Zagury J.-F., Marchini J. Improved whole-chromosome phasing for disease and population genetic studies. *Nat. Methods* 2013;10(1):5–6.