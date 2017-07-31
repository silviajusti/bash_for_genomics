#!bin/bash
#This is a script to trim adapters in a fasta or fastq file
#replace <input.fastq> with the input file name to process
#replace <input_trimmed.fastq> with your output name
#replace <adapters.fasta> with you adapters list in fasta format

cp  input.fastq input_trimmed.fastq
egrep ^[ATCG] adapters.fasta > list.txt

for adapter in $(cat list.txt)
	do 
		sed -i  "s/$adapter//g"  input_trimmed.fastq
	done

rm list.txt