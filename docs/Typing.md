# HLA Typing Module

HLA typing is critical for organ transplantation, disease-association studies, and vaccine development because the major histocompatibility complex (MHC) exerts a central role in antigen recognition and immune response. High-resolution (8-digit) HLA typing is especially valuable as it captures subtle variations within the HLA locus, enabling more accurate predictions of disease risk and therapeutic outcomes.

We provide a highly user-friendly interface for HLA typing from raw sequencing data, built upon state-of-the-art tools (**SpecHLA** and **SpecImmune**). Users may upload next-generation short paired-end reads, third-generation long reads, or a combination of both. The platform performs automatic quality control and alignment, followed by high-resolution allele nomenclature based on the latest IPD-IMGT/HLA database. Because structural variation (SV) can alter HLA function, we annotate haplotype-level structural changes and incorporate unified SV calling results from multiple methods. We visualize SVs—including inversions, deletions, duplications, and complex breakpoints—using the **svviv2** engine. All results and visualizations are downloadable, and users receive progress updates by email. To further streamline the workflow, sample input and output files are provided for reference, facilitating easier adoption and consistent interpretation of results.

---

## Workflow Steps

### 1. Launch HLA Typing Module  
Click **HLA Typing** in the analysis menu to access the module. You will be presented with three data type options based on your sequencing platform.

### 2. Select Data Type and Upload Data  

Choose the appropriate mode based on your sequencing data:

#### **Long Reads Mode (TGS)**  
For third-generation sequencing data (PacBio, Nanopore, etc.):
- Enter sample/task metadata (Sample ID, Project Name)
- Configure run parameters as needed
- Upload **1 FASTQ file** (maximum 50MB, as only the MHC region is analyzed)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/HLA_typing/tgs.png" alt="Long Reads Mode">
</div>

#### **Short Reads Mode (NGS)**  
For next-generation paired-end sequencing data:
- Enter sample/task metadata (Sample ID, Project Name)
- Configure run parameters as needed
- Upload **2 paired-end FASTQ files** (R1 and R2)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/HLA_typing/ngs.png" alt="Short Reads Mode">
</div>

#### **Mixed Mode (Long Reads + Short Reads)**  
For hybrid sequencing approaches combining both technologies:
- Enter sample/task metadata (Sample ID, Project Name)
- Configure run parameters as needed
- Upload **3 FASTQ files**: 1 long-read file + 2 paired-end short-read files
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/HLA_typing/mix.png" alt="Mixed Mode">
</div>

Upon submission, you will receive email notifications for job start, progress, completion, or failure.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your registered email to view all jobs.  
<div align="center">
  <img src="figs/typing/query.png" alt="Query">
</div>

### 4. Download Results  
- **Allele Report** table (each allele links to IPD-IMGT/HLA for full annotation):  
  https://www.ebi.ac.uk/ipd/imgt/hla/  
<div align="center">
  <img src="server_figs/HLA_typing/typing_table.png" alt="Allele Report">
</div>  
- **Structural Variation** visualization per haplotype:  
<div align="center">
  <img src="server_figs/HLA_typing/sv_demo.png" alt="SV Visualization">
</div>

---

## References

1. Barker D.J., Maccari G., Georgiou X., Cooper M.A., Flicek P., Robinson J., Marsh S.G.E. The IPD-IMGT/HLA Database. *Nucleic Acids Res.* 2023;51:D1053–D1060.  
2. Zhou F., Cao H., Zuo X., Zhang T., Zhang X., Liu X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576