# HLA Population Diversity Analysis

Population genetic analyses of the MHC provide insights into its evolutionary dynamics, population structure, and selection pressures. In EAMHC, users can upload population-level VCF files for investigation. The platform utilizes **PLINK** to filter samples based on quality control metrics, prune loci in linkage disequilibrium (LD), and perform principal component analysis (PCA) to reveal substructure and reduce confounding. EAMHC also calculates genome-wide LD (r²), an indicator of co-segregation between loci, and employs **VCFtools** to compute Tajima’s D and nucleotide diversity (π). Tajima’s D detects deviations from neutrality (e.g., bottlenecks or selective sweeps), while π measures average pairwise diversity, reflecting evolutionary and demographic history. All outputs and visualizations—PCA plots, LD decay curves, Tajima’s D and π tracks—are downloadable. Example input files and results are provided to guide users through the workflow.

---

## Workflow Steps

### 1. Launch Population Diversity Module  
Click **HLA Population Diversity Analysis** in the analysis menu, then **Start**.  
<div align="center">
  <img src="/figs/diversity/start.png" alt="Start Population Diversity">
</div>

### 2. Upload Data  
- Enter sample/task metadata (Sample ID, Project Name).  
- Upload **population VCF file** and **sample information file** (e.g., population labels).  
<div align="center">
  <img src="/figs/diversity/upload.png" alt="Upload Population Diversity">
</div>  
- Preview example inputs & outputs at:  
  https://eamhc.deepomics.org/database  
<div align="center">
  <img src="/figs/diversity/demo_data.png" alt="Demo Population Diversity">
</div>  
- Upon submission, email notifications will inform you of job start, progress, completion, or failure.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your registered email to view all jobs.  
<div align="center">
  <img src="/figs/diversity/query.png" alt="Query Population Diversity">
</div>

### 4. Download Results  
- **PCA results** (interactive 2D/3D)  
  <div align="center">
    <img src="/figs/diversity/pca.jpg" alt="PCA Summary">
  </div>  
- **Population genetic metrics** (LD decay, Tajima’s D, π)  
<div align="center">
    <img src="/figs/diversity/decay.png" alt="Population Genetics">
  </div>  
  <div align="center">
    <img src="/figs/diversity/tajima-d.png" alt="Population Genetics">
  </div>  
  <div align="center">
    <img src="/figs/diversity/landscape.png" alt="Population Genetics">
  </div>  
  <div align="center">
    <img src="/figs/diversity/distribution.png" alt="Population Genetics">
  </div>  
  <div align="center">
    <img src="/figs/diversity/pi.png" alt="Population Genetics">
  </div>  
- **Full results** (tables & figures)  
  <div align="center">
    <img src="/figs/diversity/demo_data.png" alt="Population Diversity Results">
  </div>

---

## References

1. Zhou F., Cao H., Zuo X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576  
2. Purcell S., Neale B., Todd-Brown K., et al. PLINK: a tool set for whole-genome association and population-based linkage analyses. *Am. J. Hum. Genet.* 2007;81(3):559–575.  
3. Danecek P., Auton A., Abecasis G., et al. The variant call format and VCFtools. *Bioinformatics* 2011;27(15):2156–2158.  
4. Tajima F. Statistical method for testing the neutral mutation hypothesis by DNA polymorphism. *Genetics* 1989;123(3):585–595.  
5. Nei M. Molecular Evolutionary Genetics. Columbia University Press; 1987.