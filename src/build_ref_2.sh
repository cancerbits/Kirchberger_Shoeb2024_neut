CR=$TOOLS/cellranger-3.1.0/cellranger
genome_dir=$RESOURCES/genomes/dr11
cellrange_ref=$RESOURCES/cellranger_data/refdata-cellranger-GRCz11-3.1.0_2
mkdir $genome_dir
cd $genome_dir

#filter GTF
$CR mkgtf \
Danio_rerio.GRCz11.100.chr.gtf \
Danio_rerio.GRCz11.100.chr.filtered.gtf \
--attribute=gene_biotype:protein_coding

#make ref
$CR mkref \
--genome=Danio.rerio_genome_2 \
--fasta=Danio_rerio.GRCz11.dna.primary_assembly.fa \
--genes=Danio_rerio.GRCz11.100.chr.filtered.gtf

#
mkdir $cellrange_ref
mv Danio.rerio_genome/* $cellrange_ref

