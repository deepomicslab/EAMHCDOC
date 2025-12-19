# Antibody Language Model Module

The Antibody Language Model is trained on the Observed Antibody Space (OAS) database containing hundreds of millions of antibody sequences. The model restores missing residues commonly lost during B-cell receptor sequencing, particularly in framework regions, and generates sequence embeddings for downstream analysis, antibody engineering, and therapeutic development applications.

---

## Workflow Steps

### 1. Launch Antibody Language Model Module  
Click **Antibody Language Model** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Antibody sequence file** (required): TXT file containing antibody sequences (with or without masked residues)
- Select **Output mode**: Restoration (fill missing residues) or Embedding (generate vector representations)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/ablang/upload.png" alt="Upload AbLang">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Restored sequences** or **sequence embeddings**  
  <div align="center">
    <img src="server_figs/ablang/demo.png" alt="AbLang Results">
  </div>

---

## References

1. Olsen T.H., Moal I.H., Deane C.M. AbLang: an antibody language model for completing antibody sequences. *Bioinformatics Adv.* 2022;2(1):vbac046.