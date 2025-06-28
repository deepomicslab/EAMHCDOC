# Welcome to MHC Database database

![image](/figs/overview.png)

# Welcome to EAMHC

EAMHC (East Asian MHC Consortium) is a comprehensive online database and analysis platform, built to deliver the highest-resolution reference and analytic tools for the human Major Histocompatibility Complex (MHC) region, with a focus on East Asian populations.  

By integrating deeply-sequenced data from **20,756 high-coverage samples** and applying best-in-class variant calling and phasing pipelines, EAMHC provides an unparalleled resource for MHC diversity, linkage disequilibrium, structural variation, and immunogenetics.

---

## 1. Data Collection

We assembled raw sequencing data spanning the 5 Mb classical MHC region from three major cohorts:

1. **Targeted East Asian MHC cohort**  
   • 20,635 individuals (Zhou et al.)  
   • Average coverage: 55×  
2. **1000 Genomes Project (East Asian subset)**  
   • 90 unrelated samples  
   • Ultra-high coverage: ~80×  
3. **Human Genome Diversity Project (HGDP)**  
   • 31 samples  
   • Average coverage: 35×  

_Total samples_: **20,756**  
_Total unique haplotypes_: **41,270**  

---

## 2. Variant Calling & Genotyping

To ensure high-confidence SNP and indel discovery across all samples, we employed two complementary pipelines:

- **GATK 4.6 Best Practices** (Poplin et al., 2017)  
  • Alignment: BWA-MEM v0.7.19 → duplicate marking & sorting (Picard v3.4.0)  
  • Indel realignment & BQSR → HaplotypeCaller (GVCF mode)  
  • Joint genotyping (GenotypeGVCFs) → VQSR (99.7% truth sensitivity for SNPs; 99.0% for indels)

- **DeepVariant v1.9.0**  
  • Reanalysis of BAMs with `--model_type WGS`

Variants from both workflows were merged via **GLnexus**, and low-confidence calls (VQSR failures or GQ < 10 in >50% of samples) were excluded.

---

## 3. Phasing & Reference Panel Construction

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

## 4. What EAMHC Offers

- **Interactive Visualizations**  
  • Nucleotide diversity plots  
  • LD metrics (r² & decay curves)  
  • PCA‐based population structure  
- **Five Analytical Modules**  
  1. Imputation & phasing for East Asian samples  
  2. 8-digit HLA typing from short‐/long-/mixed reads  
  3. Allele- & amino-acid-level association testing  
  4. Population diversity & structural variation studies  
  5. Immunogenic neoantigen prediction  

All data and tools are freely accessible at the EAMHC web portal. Explore our reference panel and analysis pipelines to accelerate your MHC research!