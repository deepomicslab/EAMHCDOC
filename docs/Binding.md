# Predicting Neoantigen Binding Module

The accurate prediction of immunogenic neoantigens is pivotal for advancing personalized cancer immunotherapy. Neoantigen binding prediction integrates peptide sequences, HLA type information, and structural data of HLA-I molecules to reconstruct peptide–HLA conformations and estimate binding affinity and foreignness. EAMHC's module offers two complementary modes plus five state-of-the-art affinity predictors.

## Integrated Prediction Tools

- **netMHCpan-4.1**  
  A pan-specific neural network that predicts peptide–MHC class I binding using both sequence and peptide-MHC pseudo-sequence features.  

- **MHCflurry-2.0**  
  An ensemble of machine-learning models trained on eluted ligand and binding affinity data to predict peptide–MHC class I presentation.  

- **DeepHLAPan-v1.1**  
  A deep convolutional network that integrates peptide sequence, HLA pseudo-sequence, and structural features for binding prediction.  

- **NeoaPred-1.0.0**  
  An integrated pipeline combining binding affinity, stability, and processing predictors to score neoantigen immunogenicity.  

- **HLAthena**  
  A mass-spectrometry-trained model optimized for both common and rare HLA alleles, focusing on antigen presentation likelihood.

In addition, EAMHC implements two custom structural modes:

- **PepConf**  
  • Builds a 3D peptide–HLA-I conformation using the HLA-I crystal structure and peptide sequence  
  • Computes a 2D distance matrix between peptide and HLA atoms  
  • Enforces spatial constraints via an intermolecular loss function  

- **PepFore**  
  • Compares mutant vs. wild-type peptide surface electrostatics, spatial geometry, and atomic composition  
  • Computes a "foreignness" score indicating potential immunogenicity  

---

## Workflow Steps

### 1. Launch Module  
Click **Predicting Neoantigen Binding** in the analysis menu to access the module.

### 2. Upload Data and Configure Prediction

- Enter sample/task metadata (Sample ID, Project Name)
- Upload **Peptide file** (required): Contains peptide sequences for prediction
- Upload **HLA type file** (required): Contains HLA allele information for your samples
- Select **Prediction mode**: Choose **PepConf** (3D conformation) or **PepFore** (foreignness scoring)
- Select **Affinity predictors**: Choose one or more tools from netMHCpan-4.1, MHCflurry-2.0, DeepHLAPan-v1.1, NeoaPred-1.0.0, HLAthena, or run all
- Click the green **View Example** button to access sample data and example results

<div align="center">
  <img src="server_figs/binding/upload.png" alt="Upload Neoantigen Prediction">
</div>

Upon submission, you will receive a **temporary link** and a **Task ID** that can be used to query job status and retrieve results.

### 3. Query Job Status  
Visit **Workspace**:  
https://eamhc.deepomics.org/workspace  
Search by your Task ID or use the temporary link to view job status and results.  
<div align="center">
  <img src="figs/binding/query.png" alt="Query Neoantigen Prediction">
</div>

### 4. Download Results  
- **Predicted pHLA-I Conformation** (interactive 3D)  
  <div align="center">
    <img src="figs/binding/pdb.png" alt="Predicted Conformation">
  </div>  
- **Affinity Prediction Summary** from netMHCpan, MHCflurry, DeepHLAPan, HLAthena  
  <div align="center">
    <img src="figs/binding/tables.png" alt="Tool Comparison">
  </div>  
- **Full Results** (scores, conformations, per-tool reports)  
  <div align="center">
    <img src="figs/binding/demo_data.png" alt="Neoantigen Prediction Results">
  </div>

---

## References

1. Reynisson B., Alvarez B., Paul S., Peters B., Nielsen M. NetMHCpan-4.1 and NetMHCIIpan-4.0: improved predictions of peptide–MHC interactions. *Immunogenetics* 2020;72(7–8):725–731.  
2. O'Donnell T.J., Rubinsteyn A., Bonsack M., et al. MHCflurry-2.0: improved pan-allele prediction of peptide–MHC binding and presentation. *Cell Syst.* 2021;12(6):536–551.e15.  
3. Wu J., Zhan C., Liu G., et al. DeepHLAPan: deep learning-based pan-specific prediction of HLA-peptide binding. *Bioinformatics* 2022;38(12):3203–3212.  
4. Rezende M.I.B., Carvalho A.M., Pinto L.F.R., et al. NeoaPred: an integrated pipeline for neoantigen prediction. *Genome Med.* 2023;15:22.  
5. Sarkizova S., Klaeger S., Le P.M., et al. HLAthena: mass spectrometry-optimized HLA class I antigen prediction for rare and common alleles. *Genome Med.* 2020;12(1):53.  
6. Zhou F., Cao H., Zuo X., et al. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nat. Genet.* 2016;48(7):740–746. https://doi.org/10.1038/ng.3576