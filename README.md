# Formation_BioInformatique_Ethiopie_AfrcaCDC
---------------------------------------------------------------------------------------------
<h2>1- Assembly Setup Environment</h2>

python3 -m pip install --upgrade pip</br>
conda create -n Assembly_reads python=3</br>
conda activate Assembly_reads</br>
conda deactivate Assembly_reads</br>
conda create -n flye</br>
conda activate flye</br>
-----------------------------------------------------------------------------------------------
<h2>2- Install Tools</h2> 

<h3>2.1- Short Reads</h3>

<h4>2.1.1- Quality control</h4>

conda install -c bioconda fastqc multiqc fastp

<h4>2.1.2- Assembly</h4>

conda install -c bioconda spades</br>
spades.py</br>

<h3>2.2- Long Reads</h3>

<h4>2.2.1- Quality control</h4>

pip install NanoPlot
NanoPlot --help

pip install NanoFilt
NanoFilt --help

<h4>2.2.2- Assembly</h4>

conda install -c bioconda flye
flye --help

<h3>2.3- Visualiser assemblage</h3>
[Download Bandate](rrwick.github.io/Bandage)</br> 
<strong>NB: Download, unzip and run bandage</strong>

pip3 install quast</br>
quast.py

<h3>2.4- Blast</h3>
 conda install -c bioconda blast</br>
 blastx -query scalfolds.fasta -subject base_donnees_reference -outfmt '6 qseqid qlen qstart qend sseqidslen sstart send bitscore evalue pident' -out blast.tsv
