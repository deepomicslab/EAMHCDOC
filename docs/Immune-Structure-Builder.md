# Immune Structure Builder Module

The Immune Structure Builder provides deep learning-based three-dimensional structure prediction for antibody Fv regions, T-cell receptors, and nanobodies. The module generates high-quality structural models from sequence input with automatic IMGT numbering, providing interactive visualization of predicted structures for structural immunology applications including epitope mapping and rational antibody design.

---

## Workflow Steps

### 1. Launch Immune Structure Builder Module  
Click **Immune Structure Builder** in the analysis menu to access the module.

### 2. Upload Data and Configure Analysis

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Sequence file** (required): FASTA file containing antibody, TCR, or nanobody sequences
- Select **Structure type**: Antibody Fv, TCR, or Nanobody
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/immbuilder/upload.png" alt="Upload ImmuneBuilder">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **Predicted 3D structure** (PDB format) with interactive visualization  
  <div align="center">
    <img src="server_figs/immbuilder/demo.png" alt="ImmuneBuilder Results">
  </div>

---

## References

1. Abanades B., Wong W.K., Boyles F., et al. ImmuneBuilder: Deep-learning models for predicting the structures of immune proteins. *Commun. Biol.* 2023;6:575.