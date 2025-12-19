# AXEL-F Immunogenicity Scoring Module

The Antigen eXpression-based Epitope Likelihood Function (AXEL-F) integrates peptide-MHC binding affinity with source protein expression levels to estimate the likelihood of peptide presentation on the cell surface. By incorporating transcriptomic data, AXEL-F improves neoantigen prediction accuracy compared to methods relying solely on binding affinity or expression alone. This approach is particularly valuable for cancer immunotherapy applications where identifying truly presented neoantigens is critical for vaccine design and adoptive T-cell therapy.

---

## Workflow Steps

### 1. Launch AXEL-F Module  
Click **AXEL-F Immunogenicity Scoring** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Peptide-HLA binding file** (required): CSV file containing peptide sequences with MHC binding predictions
- Configure expression data source and parameters as needed
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/axelf/upload.png" alt="Upload AXEL-F">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Immunogenicity Scores** with integrated binding and expression metrics  
  <div align="center">
    <img src="server_figs/axelf/demo.png" alt="AXEL-F Results">
  </div>

---

## References

1. Zhou F., Cao H., Zuo X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576