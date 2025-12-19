# Peptide Matching Module

The Peptide Matching module provides a fast deterministic algorithm for scanning peptide sequences against proteome databases. The tool identifies exact matches or sequences within a specified number of amino acid mismatches, supporting applications in epitope specificity analysis, self-tolerance assessment, and off-target prediction for therapeutic peptides.

---

## Workflow Steps

### 1. Launch Peptide Matching Module  
Click **Peptide Matching** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Peptide file** (required): JSON file containing query peptide sequences
- Select **Reference proteome** (human, mouse, or custom)
- Set **Mismatch tolerance** (0–3 amino acids)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/peptide_match/upload.png" alt="Upload Peptide Matching">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Match results** with source protein annotations  
  <div align="center">
    <img src="server_figs/peptide_match/demo.png" alt="Peptide Matching Results">
  </div>

---

## References

1. Bresciani A., Paul S., Bhattacharya N., et al. PEPMatch: a tool to identify short peptide sequence matches in proteomes. *BMC Bioinformatics* 2024;25:51.