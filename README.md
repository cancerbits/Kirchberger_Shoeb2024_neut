# Supplementary code repository for: Comparative transcriptomics coupled to developmental grading via transgenic Zebrafish reporter strains identifies conserved features in neutrophil maturation

Authors: Stefanie Kirchberger,<sup>1,*</sup> Mohamed R. Shoeb,<sup>1,*</sup> Daria Lazic,<sup>1</sup>Andrea Wenninger-Weinzierl,<sup>1</sup> Kristin Fischer,<sup>1</sup> Lisa E. Shaw,<sup>2</sup> Filomena Nogueira,<sup>1,3,4,10</sup> Fikret Rifatbegovic,<sup>1</sup> Eva Bozsaky,<sup>1</sup> Ruth Ladenstein,<sup>1</sup> Bernd Bodenmiller,<sup>5,6</sup> Thomas Lion,<sup>1,3,7</sup> David Traver,<sup>8,9</sup> Matthias Farlik,<sup>2</sup> Christian Schöfer,<sup>9</sup> Sabine Taschner-Mandl,<sup>1</sup> Florian Halbritter,<sup>1,#</sup> Martin Distel<sup>1,#</sup>

Affiliations:

<sup>1</sup>St. Anna Children’s Cancer Research Institute (CCRI), Vienna, Austria

<sup>2</sup>Medical University of Vienna, Department of Dermatology, Vienna, Austria

<sup>3</sup>Labdia - Labordiagnostik GmbH, Vienna, Austria

<sup>4</sup>Medical University of Vienna, Center for Medical Biochemistry, Max Perutz Labs, Campus Vienna Biocenter, Vienna, Austria

<sup>5</sup>Department of Quantitative Biomedicine, University of Zurich, Zurich, Switzerland

<sup>6</sup>Institute of Molecular Health Sciences, ETH Zurich, Zürich, Switzerland

<sup>7</sup>Medical University of Vienna, Department of Pediatrics, Vienna, Austria

<sup>8</sup>Cell and Developmental Biology, University of California, San Diego, USA

<sup>9</sup>Medical University of Vienna, Division of Cell and Developmental Biology, Center for Anatomy and Cell Biology, Vienna, Austria

<sup>10</sup>Current address: ABF Pharmaceutical Services GmbH, Vienna, Austria;

# Abstract:

Neutrophils are evolutionarily conserved innate immune cells playing pivotal roles in host defence. Zebrafish models have contributed substantially to our understanding of neutrophil functions but similarities to human neutrophil maturation have not been systematically characterized, which limits their applicability to studying human disease. Here we show, by generating and analysing transgenic zebrafish strains representing distinct neutrophil differentiation stages, a high-resolution transcriptional profile of neutrophil maturation. We link gene expression at each stage to characteristic transcription factors, including C/ebp-β, which is important for late neutrophil maturation. Cross-species comparison of zebrafish, mouse, and human samples confirms high molecular similarity of immature stages and discriminates zebrafish-specific from pan-species gene signatures. Applying the pan-species neutrophil maturation signature to RNA-sequencing data from human neuroblastoma patients reveals association between metastatic tumor cell infiltration in the bone marrow and an overall increase in mature neutrophils. Our detailed neutrophil maturation atlas thus provides a valuable resource for studying neutrophil function at different stages across species in health and disease.

# Repository structure:

* `neut_zfish.Dockerfile` - docker file of the project.
* `src/` - data analysis scripts.

## Analysis workflow:

A separate script is dedicated to each analysis steps to faciliate understanding and maintaining the workflow. The analysis pipeline is defined in `src/RNA-seq/mother.Rmd` where "child-" scripts are processed sequentially.  For optimal reproducibility, we used a Docker container `neut_zfish.Dockerfile`, which contains R and all dependent libraries preinstalled.

## Data preparation and loading

1. Download and, if needed, preprocess the GEO data into a defined input directory.
2. Set the path to the input directory at the top of `src/mother.Rmd` and use `neut_zfish.Dockerfile` to run the analysis workflow.

Input data can be obtained from GEO (link below).

# Interactive data exploration:

Data from this paper are available for interactive exploration using Vitessce (http://vitessce.io/):

Figure 3:

http://vitessce.io/#?url=https://cancerbits.github.io/Kirchberger_Shoeb2024_neut/vitessce-data/vitessce_fig3.h5ad.zarr/config.json

Figure 4:

http://vitessce.io/#?url=https://cancerbits.github.io/Kirchberger_Shoeb2024_neut/vitessce-data/vitessce_fig4.h5ad.zarr/config.json

# Other links:

* Gene Expression Omnibus (GEO) entry: https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE252788
* Code archive: https://doi.org/10.5281/zenodo.10475407
* Paper: https://doi.org/10.1038/s41467-024-45802-1
