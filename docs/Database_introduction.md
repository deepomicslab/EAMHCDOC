# Welcome to MHC Database database

![image](figs/overview.png)


The Major Histocompatibility Complex (MHC) is one of the most polymorphic regions of the human genome and plays a central role in immune recognition, disease susceptibility, and transplant compatibility. Despite its importance, high‐resolution, population‐specific reference panels remain limited—especially for East Asian populations. The East Asian MHC Consortium (EAMHC) addresses this gap by assembling deep‐coverage sequence data, state‐of‐the‐art variant‐calling and phasing pipelines, and interactive analysis tools into a unified web platform [1].

## 1. Data Collection

We aggregated raw sequencing data targeting the 5 Mb classical MHC region from **20,756 samples**, drawn from three primary sources:

1. **Deep sequencing in the Han Chinese population**  
   • 20,635 individuals (10,689 healthy controls and 9,946 psoriasis patients)  
   • Average coverage: 55×  
   • Reference: Zhou _et al._ (2016) [1]

2. **1000 Genomes Project (East Asian subset)**  
   • 90 unrelated samples  
   • Ultra‐high coverage: ~80×  
   • Reference: The 1000 Genomes Project Consortium (2015) [11]

3. **Human Genome Diversity Project (HGDP)**  
   • 31 samples  
   • Average coverage: 35×  
   • Reference: Cann _et al._ (2002) [12]

These data yield **41,270 unique MHC haplotypes**, forming the largest East Asian‐specific MHC reference panel to date.

## 2. Variant Calling & Genotyping

To maximize sensitivity and specificity of SNP and indel discovery, we processed all samples through two complementary pipelines:

- **GATK 4.6 Best Practices** [2]  
  - Alignment with BWA‐MEM v0.7.19 [3], duplicate marking/sorting (Picard), indel realignment, BQSR  
  - HaplotypeCaller in GVCF mode → joint genotyping → VQSR (99.7% SNPs; 99.0% indels)  

- **DeepVariant v1.9.0** [6]  
  - Reanalysis of BAMs with `--model_type WGS`  

Reads and mappings were quality‐checked with Qualimap 2.1.2 [4]. Variants from both callers were merged via GLnexus [5], and low‐confidence calls (VQSR fails or GQ < 10 in > 50% of samples) were filtered out.

## 3. Phasing & Reference Panel Construction

We generated a high‐resolution haplotype panel as follows:

- **VCF merging & normalization** with bcftools v1.17  
- **Hardy–Weinberg filtering** (plink 1.9, p ≤ 1×10⁻⁶)  
- **Parallel phasing** using BEAGLE v5.0 [7], Eagle2 [8], SHAPEIT5 [9]  
- **Consensus integration** of phased outputs, anchored to GRCh38.p13 [13]

## Key Features

- **Interactive Visualizations**  
  • Nucleotide diversity  
  • LD metrics (r² & decay curves)  
  • PCA‐based population structure  

- **Five Analysis Modules**  
  1. Imputation & phasing for East Asian cohorts  
  2. High‐resolution (up to 8-digit) HLA typing  
  3. Allele- & amino-acid-level association testing  
  4. Population diversity & structural variation studies  
  5. Immunogenic neoantigen prediction  

All data and tools are freely accessible on the EAMHC web portal. Start exploring at [EAMHC Website](#).

---

## References

1. Zhou F., Cao H., Zuo X., Zhang T., Zhang X., Liu X., Xu R., Chen G., Zhang Y., Zheng X., Jin X., Gao J., Mei J., Sheng Y., Li Q., Liang B., Shen J., Shen C., Jiang H., … Zhang X. Deep sequencing of the MHC region in the Chinese population contributes to studies of complex disease. *Nature Genetics* 48, 740–746 (2016). https://doi.org/10.1038/ng.3576  
2. Poplin R., Chang P.-C., Alexander D., et al. Scaling accurate genetic variant discovery to tens of thousands of samples. *bioRxiv* 2017;doi:10.1101/201178.  
3. Li H., Durbin R. Fast and accurate long-read alignment with Burrows–Wheeler transform. *Bioinformatics* 26(5):589–595 (2010).  
4. Okonechnikov K., Conesa A., García-Alcalde F. Qualimap 2: advanced multi-sample quality control for high-throughput sequencing data. *Bioinformatics* 32(2):292–294 (2016).  
5. Lin M.F., Juhn F., Obst J., et al. GLnexus: joint variant calling for large cohort analysis. *Bioinformatics* 34(16):2569–2575 (2018).  
6. Poplin R., Chang P.-C., Wang L., et al. A universal SNP and small‐indel variant caller using deep neural networks. *Nature Methods* 15(10):677–679 (2018).  
7. Browning B.L., Browning S.R. Genotype imputation with millions of reference samples. *American Journal of Human Genetics* 98(1):116–126 (2016).  
8. Loh P.-R., Palamara P.F., Price A.L. Fast and accurate long-range phasing in a UK Biobank cohort. *Nature Genetics* 48(7):811–816 (2016).  
9. Delaneau O., Zagury J.-F., Marchini J. Improved whole-chromosome phasing for disease and population genetic studies. *Nature Methods* 10(1):5–6 (2013).  
10. The 1000 Genomes Project Consortium. A global reference for human genetic variation. *Nature* 526(7571):68–74 (2015).  
11. Cann H.M., de Toma C., Cazes L., et al. A human genome diversity cell line panel. *Science* 296(5566):261–262 (2002).  
12. Genome Reference Consortium. GRCh38.p13: human reference genome (patch release 13). 2019.  
9:23 PM