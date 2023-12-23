files=$(ls reads/ | cut -d_ -f1,2 | sort | uniq)
for file in $files
do
echo "$file"
mkdir -p assembly/"$file"/
echo "Spades"
spades.py -1 quality_control/fastp/"$file"_qc_R1.fastq.gz -2 quality_control/fastp/"$file"_qc_R2.fastq.gz  -o assembly/"$file"/
echo "Quast"
quast.py assembly/"$file"/contigs.fasta -o assembly/"$file"/quast
done
echo ""
echo "Thanks for using my workflow"
date
echo "Author : MEKA Moise Christian Jr"
echo "Institute : National Public Health Laboratory (NPHL) "
echo "Year : 2023"
