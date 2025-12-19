# IEDB Epitope Cluster Module

The IEDB Epitope Cluster module groups epitope sequences based on sequence similarity using a user-defined identity threshold. The algorithm identifies clusters of potentially cross-reactive peptides and provides hierarchical subcluster assignments, enabling systematic organization and analysis of large epitope datasets. This tool is essential for understanding immune cross-reactivity patterns and reducing redundancy in epitope libraries.

---

## Workflow Steps

### 1. Launch IEDB Epitope Cluster Module  
Click **IEDB Epitope Cluster** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Epitope file** (required): JSON file containing epitope sequences for clustering
- Set **Identity threshold** for clustering (default: 80%)
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/iedb_cluster/upload.png" alt="Upload IEDB Cluster">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Cluster assignments** with hierarchical subcluster information  
  <div align="center">
    <img src="server_figs/iedb_cluster/demo.png" alt="IEDB Cluster Results">
  </div>

---

## References

1. Dhanda S.K., Vaughan K., Schulten V., et al. Development of a novel clustering tool for linear peptide sequences. *Immunology* 2018;155(3):331–345.
2. Vita R., Mahajan S., Overton J.A., et al. The Immune Epitope Database (IEDB): 2018 update. *Nucleic Acids Res.* 2019;47(D1):D339–D343.