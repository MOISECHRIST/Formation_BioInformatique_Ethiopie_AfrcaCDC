# Formation_BioInformatique_Ethiopie_AfrcaCDC
<h2>Assembly Setup Environment</h2>

python3 -m pip install --upgrade pip
conda create -n Assembly_reads python=3
conda activate Assembly_reads
conda deactivate Assembly_reads
conda create -n flye
conda activate flye

<h2>Install Tools</h2> 

<h3>Short Reads</h3>

<h4>Quality control</h4>

conda install -c bioconda fastqc multiqc fastp

<h4>Assembly</h4>

conda install -c bioconda spades
spades.py

rrwick.github.io/Bandage
NB: Telecharger et dezipper le fichier d'execution de Bandage

<h3>Long Reads</h3>

<h4>Quality control</h4>

pip install NanoPlot
NanoPlot --help

pip install NanoFilt
NanoFilt --help

<h3>Assembly</h3>

conda install -c bioconda flye
flye --help

<h3>Visualiser assemblage</h3>

pip3 install quast
quast.py

<h3>Blast</h3>
 conda install -c bioconda blast
 blastx -query scalfolds.fasta -subject base_donnees_reference -outfmt '6 qseqid qlen qstart qend sseqidslen sstart send bitscore evalue pident' -out blast.tsv
