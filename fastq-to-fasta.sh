#! /bin/bash
#this script transforms a fastq file in fasta file
# test.fastq is the input
# output.fasta is the output

grep @ test.fastq -A 1 | sed 's/@/>/g' |sed 's/--//g' |sed '/^$/d' output.fasta


# an alternative for a bunch of files
# needs a list.tx with only the sample names for input (e.g 321.fastq will be 321 on the list)

for sample in $(cat list.txt)
	do
	grep @ ${sample}.fastq -A 1 | sed 's/@/>/g' |sed 's/--//g' |sed '/^$/d' ${sample}.fasta
	done