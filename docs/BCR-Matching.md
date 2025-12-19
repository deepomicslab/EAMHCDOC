# BCR Matching Module

The BCR Matching module predicts epitope-specific antibody clustering based on CDR loop sequences using pre-trained machine learning models. The algorithm groups antibodies likely to recognize the same epitope based on sequence features, enabling rapid identification of convergent B-cell responses from repertoire sequencing data and facilitating antibody discovery efforts.

---

## Workflow Steps

### 1. Launch BCR Matching Module  
Click **BCR Matching** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **BCR sequence files** (required): 6 FASTA files containing heavy and light chain CDR sequences (CDRH1, CDRH2, CDRH3, CDRL1, CDRL2, CDRL3)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/bcr_match/upload.png" alt="Upload BCR Matching">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Epitope cluster assignments** with confidence scores  
  <div align="center">
    <img src="server_figs/bcr_match/demo.png" alt="BCR Matching Results">
  </div>

---

## References

1. Robinson S.A., Raybould M.I.J., Schneider C., et al. Epitope profiling of coronavirus-binding antibodies using computational structural modelling. *PLOS Comput. Biol.* 2021;17(12):e1009675.