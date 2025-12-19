# SCALOP CDR Annotation Module

The SCALOP (Sequence-based prediction of CAnonical LOoP conformations) module predicts canonical loop conformations for antibody complementarity-determining regions. The algorithm assigns structural clusters for H1, H2, L1, L2, and L3 loops based on sequence features and provides representative loop structures from each cluster, facilitating antibody modeling, humanization, and CDR grafting efforts.

---

## Workflow Steps

### 1. Launch SCALOP Module  
Click **SCALOP CDR Annotation** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Antibody sequence file** (required): TXT file containing antibody variable domain sequences
- Select **Numbering scheme** and **CDR definition** to use
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/scalop/upload.png" alt="Upload SCALOP">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Canonical cluster assignments** for each CDR loop  
  <div align="center">
    <img src="server_figs/scalop/demo.png" alt="SCALOP Results">
  </div>

---

## References

1. Wong W.K., Georges G., Ros F., et al. SCALOP: sequence-based antibody canonical loop structure annotation. *Bioinformatics* 2019;35(10):1774–1776.