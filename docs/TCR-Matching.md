# TCR Matching Module

The TCR Matching module computes T-cell receptor sequence similarity using a string kernel approach with amino acid substitution matrices. The algorithm quantifies CDR3 sequence relatedness to identify TCRs with potentially shared antigen specificity, supporting studies of T-cell cross-reactivity, public TCR repertoires, and immune response convergence across individuals.

---

## Workflow Steps

### 1. Launch TCR Matching Module  
Click **TCR Matching** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **TCR file** (required): TXT file containing CDR3 sequences for matching
- Configure similarity threshold and scoring matrix as needed
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/tcr_match/upload.png" alt="Upload TCR Matching">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **TCR similarity scores** and **cluster assignments**  
  <div align="center">
    <img src="server_figs/tcr_match/demo.png" alt="TCR Matching Results">
  </div>

---

## References

1. Chronister W.D., Crinklaw A., Mahajan S., et al. TCRMatch: predicting T-cell receptor specificity based on sequence similarity to previously characterized receptors. *Front. Immunol.* 2021;12:640725.