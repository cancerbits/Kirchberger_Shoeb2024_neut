# pull base image
FROM cancerbits/dockr:4.0.3-a

# who maintains this image
LABEL maintainer mohamed shoeb "mohamed.shoeb@ccri.at"
LABEL version neut_zfish-v1

#install stack
RUN apt-get update
RUN curl -sSL https://get.haskellstack.org/ | sh

#install pandoc
WORKDIR ~

RUN apt-get -qq install pandoc pandoc-citeproc

#install GSL
RUN apt-get update
RUN apt-get -qq install libgsl-dev

#update path
#RUN export PATH=/root/.local/bin:$PATH

#packages
RUN R -e "BiocManager::install(c('MAST', 'org.Hs.eg.db', 'org.Dr.eg.db','EnrichmentBrowser', 'ShortRead', 'clusterProfiler','fgsea','GSEABenchmarkeR', 'slingshot'))"
RUN R -e "BiocManager::install(c('tradeSeq', 'BiocGenerics', 'DelayedArray', 'DelayedMatrixStats', 'Nebulosa'))"
RUN R -e "BiocManager::install(c('limma', 'S4Vectors', 'SingleCellExperiment', 'SummarizedExperiment', 'gage'))"
RUN R -e "BiocManager::install(c('batchelor', 'Matrix.utils', 'TSCAN', 'M3Drop', 'destiny', 'CoGAPS',  'EnrichmentBrowser', 'GenomeInfoDb'))"
RUN R -e "devtools::install_github('chris-mcginnis-ucsf/MULTI-seq')"
RUN R -e "devtools::install_github('cole-trapnell-lab/leidenbase')"
RUN R -e "devtools::install_github('cole-trapnell-lab/monocle3')"
RUN R -e "devtools::install_github('ppls', version = '1.6-1', repos = 'http://cran.us.r-project.org', dependencies = FALSE, upgrade = FALSE)"
RUN R -e "devtools::install_github('parcor', version = '0.2.6', repos = 'http://cran.us.r-project.org', dependencies = FALSE, upgrade = FALSE)"
RUN R -e "install.packages(c('kableExtra','here', 'sctransform', 'gghighlight','devtools','Polychrome','SLICER','glmpca','uwot','graphlayouts','netrankr'))"
RUN R -e "remove.packages(grep('spatstat', installed.packages(), value = T))"
RUN R -e "devtools::install_version('spatstat', version = '1.64-1')"
RUN R -e "remotes::install_github('schochastics/edgebundle')"
RUN R -e "remotes::install_github('schochastics/networkdata')"
RUN R -e "devtools::install_github('milescsmith/ReductionWrappers',upgrade='never')"
RUN R -e "BiocManager::install(c('TCGAWorkflow','TCGAWorkflowData','BioinformaticsFMRP/TCGAbiolinks', 'EDASeq', 'GENIE3'))"
RUN R -e "BiocManager::install(c('BSgenome.Hsapiens.UCSC.hg19'))"
RUN R -e "install.packages(c('seriation','symphony', 'Epi', 'corpcor','janitor','corto','survminer','anndata', 'msigdbr', 'concaveman'))"
RUN R -e "remotes::install_github('mojaveazure/seurat-disk')"
RUN R -e "BiocManager::install(c('singscore', 'GSVA', 'TrajectoryUtils'))"
RUN R -e "remotes::install_github('montilab/hypeR')"
RUN R -e "remotes::install_github('VPetukhov/ggrastr')"
RUN R -e "install.packages(c('ggfun','scatterpie','seriation','symphony', 'Epi', 'corpcor','janitor','corto','survminer','anndata', 'msigdbr', 'concaveman'))"
