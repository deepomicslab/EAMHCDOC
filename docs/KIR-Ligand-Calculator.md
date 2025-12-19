# KIR Ligand Calculator Module

The KIR Ligand Calculator determines killer-cell immunoglobulin-like receptor (KIR) ligand groups from HLA-C and HLA-B typing to predict NK cell alloreactivity patterns. The calculator classifies HLA alleles into C1, C2, Bw4, and Bw6 groups, enabling assessment of KIR-ligand mismatch status for transplant strategies aimed at enhancing graft-versus-leukemia effects while minimizing rejection risk.

---

## Workflow Steps

### 1. Launch KIR Ligand Calculator Module  
Click **KIR Ligand Calculator** in the analysis menu to access the module.

### 2. Enter HLA Typing Information

- Enter sample/task metadata (Sample ID, Project Name)
- Input **HLA-C alleles** (required): Both alleles for C1/C2 group determination
- Input **HLA-B alleles** (required): Both alleles for Bw4/Bw6 group determination
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/kir_ligand/upload.png" alt="Upload KIR Ligand">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.

### 4. Download Results  
- **KIR ligand group assignments** (C1, C2, Bw4, Bw6) and **predicted NK alloreactivity**  
  <div align="center">
    <img src="server_figs/kir_ligand/demo.png" alt="KIR Ligand Results">
  </div>

---

## References

1. Ruggeri L., Capanni M., Urbani E., et al. Effectiveness of donor natural killer cell alloreactivity in mismatched hematopoietic transplants. *Science* 2002;295(5562):2097–2100.
2. Cooley S., Weisdorf D.J., Guethlein L.A., et al. Donor selection for natural killer cell receptor genes leads to superior survival after unrelated transplantation for acute myelogenous leukemia. *Blood* 2010;116(14):2411–2419.