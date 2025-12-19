# Peptide Expression Analysis Module

The Peptide Expression Analysis module annotates peptides with source protein expression levels from public transcriptomic databases. The module identifies all possible source proteins for a given peptide sequence and aggregates their expression values across tissues and cell types, enabling prioritization of epitopes derived from highly expressed antigens for immunotherapy applications.

---

## Workflow Steps

### 1. Launch Peptide Expression Analysis Module  
Click **Peptide Expression Analysis** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Peptide file** (required): JSON file containing peptide sequences for expression annotation
- Select **Expression database** and tissue/cell type filters as needed
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/pepx/upload.png" alt="Upload Peptide Expression">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Expression annotations** with tissue-specific TPM values  
  <div align="center">
    <img src="server_figs/pepx/demo.png" alt="Peptide Expression Results">
  </div>

---

## References

1. The GTEx Consortium. The GTEx Consortium atlas of genetic regulatory effects across human tissues. *Science* 2020;369(6509):1318–1330.