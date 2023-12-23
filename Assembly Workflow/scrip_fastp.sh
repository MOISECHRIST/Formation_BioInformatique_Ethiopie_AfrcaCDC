echo "Fastp"
files=$(ls reads/ | cut -d_ -f1,2 | sort | uniq)
for file in $files
do
echo "$file"
fastp -i reads/"$file"_L001_R1_001.fastq.gz -I reads/"$file"_L001_R2_001.fastq.gz -n 1 -f 15 -F15 --detect_adapter_for_pe -o quality_control/fastp/"$file"_qc_R1.fastq.gz -O quality_control/fastp/"$file"_qc_R2.fastq.gz -h quality_control/fastp/"$file".html -j quality_control/fastp/"$file".json
done

echo "Fastqc"

fastqc quality_control/fastp/*qc*.fastq.gz -o quality_control/fastqc/

echo "Multiqc"

multiqc quality_control/fastqc/ -o quality_control/multiqc/after/

echo ""
echo "Thanks for using my workflow"
date
echo "Author : MEKA Moise Christian Jr"
echo "Institute : National Public Health Laboratory (NPHL) "
echo "Year : 2023"
