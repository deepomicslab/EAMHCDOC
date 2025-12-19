# Antigen Receptor Classifier Module

The Antigen Receptor Classifier provides IMGT-based numbering and annotation of antibody and T-cell receptor variable domain sequences. The module employs language model-based inference to accurately assign residue positions according to standardized numbering schemes including IMGT, Kabat, and Martin (Enhanced Chothia), supporting downstream structural and functional analysis of immune receptors.

---

## Workflow Steps

### 1. Launch Antigen Receptor Classifier Module  
Click **Antigen Receptor Classifier** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Sequence file** (required): FASTA file containing antibody or TCR variable domain sequences
- Select **Numbering scheme** (IMGT, Kabat, or Martin)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/arc/upload.png" alt="Upload Antigen Receptor Classifier">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Numbered sequences** with chain type and CDR annotations  
  <div align="center">
    <img src="server_figs/arc/demo.png" alt="Antigen Receptor Classifier Results">
  </div>

---

## References

1. Lefranc M.-P., Pommié C., Ruiz M., et al. IMGT unique numbering for immunoglobulin and T cell receptor variable domains and Ig superfamily V-like domains. *Dev. Comp. Immunol.* 2003;27(1):55–77.