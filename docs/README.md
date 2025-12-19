# Welcome to EAMHC

![image](figs/MHC_OVERVIEW.png)

EAMHC is a comprehensive, integrated web server for MHC/HLA immunogenomics, designed to streamline the entire analytical workflow within a single, user-friendly interface. By consolidating multiple specialized analytical modules into one cohesive platform, EAMHC eliminates the barriers of navigating command-line pipelines and switching between multiple websites—accelerating research iteration and ensuring reproducible results.

Built on deeply-sequenced data from **20,756 high-coverage samples** comprising **41,270 unique MHC haplotypes** across global populations, EAMHC provides an unparalleled resource for MHC diversity, linkage disequilibrium, structural variation, and immunogenetics research.

---

## Key Features

### Unified End-to-End Workflow
From raw sequencing data to publication-ready visualizations, EAMHC provides a seamless analytical pipeline with standardized input validation and example datasets for every module.

### Global MHC Reference Panel
Our platform incorporates a unique reference panel derived from 20,756 high-coverage samples spanning diverse global populations—enabling superior imputation accuracy for European, African, South Asian, East Asian, and admixed American ancestry groups.

### Interactive Results & 3D Visualization
All analyses generate bookmarkable result URLs with real-time job status tracking, interactive plots and tables (Manhattan plots, QQ plots, LD heatmaps, PCA summaries, ranked neoantigen tables), and in-browser 3D protein structure visualization using the NGL viewer for pHLA complex exploration.

### Comprehensive Toolset
20 specialized modules organized into five categories covering MHC/HLA core analysis, population and association studies, MHC-ligand interactions, immune repertoire analysis, and structural immunoinformatics.

### No Installation Required
All computations run on our servers—simply upload your data, submit your job, and retrieve interactive results through your web browser. Free and open to all users with no login required.

### Privacy-First Design
EAMHC does not store any user-uploaded data—all files are automatically deleted after analysis is complete, ensuring full privacy and compliance with data protection standards.

---

## Data Collection

We assembled raw sequencing data spanning the 5 Mb classical MHC region from three major cohorts representing global diversity:

1. **Targeted MHC cohort**  
   • 20,635 individuals (Zhou et al.)  
   • Average coverage: 55×  
2. **1000 Genomes Project**  
   • 90 unrelated samples from multiple populations  
   • Ultra-high coverage: ~80×  


_Total samples_: **20,756**  
_Total unique haplotypes_: **41,270**  

---

## Variant Calling & Genotyping

To ensure high-confidence SNP and indel discovery across all samples, we employed two complementary pipelines:

- **GATK 4.6 Best Practices** (Poplin et al., 2017)  
  • Alignment: BWA-MEM v0.7.19 → duplicate marking & sorting (Picard v3.4.0)  
  • Indel realignment & BQSR → HaplotypeCaller (GVCF mode)  
  • Joint genotyping (GenotypeGVCFs) → VQSR (99.7% truth sensitivity for SNPs; 99.0% for indels)

- **DeepVariant v1.9.0**  
  • Reanalysis of BAMs with `--model_type WGS`

Variants from both workflows were merged via **GLnexus**, and low-confidence calls (VQSR failures or GQ < 10 in >50% of samples) were excluded.

---

## Phasing & Reference Panel Construction

To build our high-resolution MHC reference panel, we:

1. **Merged** per-sample VCFs with **bcftools v1.17**, retaining variants with AC ≥ 2.  
2. **Normalized** multiallelic sites & removed redundancies.  
3. **Filtered** by Hardy–Weinberg equilibrium (HWE p ≤ 1×10⁻⁶) using **plink 1.9**.  
4. **Phased** using three leading tools in parallel:  
   - BEAGLE v5.0  
   - Eagle2  
   - SHAPEIT5  
5. **Integrated** phased outputs into a consensus haplotype reference panel, anchored to GRCh38.

---

## Analytical Modules

EAMHC offers 20 integrated analytical modules organized into five categories:

### A. MHC/HLA Core Analysis
- **A1. HLA Typing**: High-resolution HLA typing from multiple sequencing platforms including WGS, WES, long-read, bulk RNA-seq, and single-cell RNA-seq data.
- **A2. HLA Imputation & Phasing**: Statistical imputation and phasing of HLA alleles from SNP array or low-coverage sequencing data with ancestry-specific reference panels.

### B. Population & Association Analysis
- **B1. HLA Phenotype Association**: Case-control and quantitative trait association analysis for HLA alleles, amino acid polymorphisms, and SNPs within the MHC region.
- **B2. MHC Population Diversity**: Comprehensive analysis of MHC genetic diversity including allele frequencies, linkage disequilibrium, and population differentiation metrics.

### C. MHC-Ligand Interaction
- **C1. MHC Binding Prediction**: Peptide-MHC binding affinity prediction for Class I and Class II molecules using state-of-the-art algorithms.
- **C2. AXEL-F Immunogenicity Scoring**: Integrates peptide-MHC binding affinity with protein expression levels for improved neoantigen prediction.
- **C3. IEDB Epitope Cluster**: Clusters epitope sequences based on sequence similarity to identify potentially cross-reactive peptides.
- **C4. DPB1 T-Cell Epitope Matching**: Evaluates HLA-DPB1 mismatch permissiveness for hematopoietic stem cell transplantation.
- **C5. HLA-B Leader Matching**: Compares HLA-B leader sequences to assess graft-versus-host disease risk in mismatched transplantation.
- **C6. KIR Ligand Calculator**: Determines KIR ligand groups from HLA typing to predict NK cell alloreactivity patterns.
- **C7. Peptide Matching**: Fast scanning of peptide sequences against proteome databases for epitope specificity analysis.
- **C8. Peptide Expression Analysis**: Annotates peptides with source protein expression levels from public transcriptomic databases.

### D. Immune Repertoire Analysis
- **D1. TCR Matching**: Computes T-cell receptor sequence similarity to identify TCRs with shared antigen specificity.
- **D2. Antigen Receptor Classifier**: IMGT-based numbering and annotation of antibody and TCR variable domain sequences.
- **D3. BCR Matching**: Predicts epitope-specific antibody clustering based on CDR loop sequences using pre-trained ML models.

### E. Structural Immunoinformatics
- **E1. SPACE2 Antibody Clustering**: Clusters antibodies by structural similarity of CDR loops to identify groups binding the same epitope.
- **E2. Antibody Language Model**: Antibody-specific language model for sequence restoration and embedding generation.
- **E3. Immune Structure Builder**: Deep learning-based 3D structure prediction for antibody Fv regions, TCRs, and nanobodies.
- **E4. Polymeric Ig Generator**: Generative language model for paired antibody sequence design and chain complementation.
- **E5. SCALOP CDR Annotation**: Sequence-based prediction of canonical loop conformations for antibody CDRs.

---

## Getting Started

All data and tools are freely accessible at the EAMHC web portal. To begin:

1. Visit the **Analysis** page and select your desired module
2. Upload your input files (example datasets available for each module)
3. Submit your job and receive a Task ID and temporary result link
4. Track job status via the **Workspace** page
5. Download interactive results and publication-ready figures

Explore our reference panel and analysis pipelines to accelerate your MHC research!