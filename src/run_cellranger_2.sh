#!/bin/sh

DATA=/path/to/rawdata/
CR=$TOOLS/cellranger-3.1.0/cellranger
O=$OUT/neut_zfish/results/cellranger_reporters
REF=$RESOURCES/cellranger_data/refdata-cellranger-GRCz11-3.1.0_reporters/
CHEM=SC3Pv3 #SC3Pv2
CPUs=8

mkdir -p $O
cd $O

for I in $DATA/zebrafish/*/*/*GEX_* ; do
	ID=$(basename $I)
	echo "$I"
	if [ ! -d $O/$ID ] ; then
		echo "$I $ID"
		$CR count --chemistry=$CHEM --nosecondary --transcriptome=${REF} --id=${ID} --fastqs=$I --localmem=64 --localcores=$CPUs
	fi
done


