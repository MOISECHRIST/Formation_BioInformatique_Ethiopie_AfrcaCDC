# Formation_BioInformatique_Ethiopie_AfrcaCDC
<p>
The bioinformatics training that Africa CDC organized for Central Africa was an excellent one for me. During this training I learned a lot of basic theoretical concepts and did a lot of practical work. 
In this git repository I share with you all the results I got through the many practical works I did.</br>
First of all, I advise you to follow this short tutorial to set up your environment before you can use the various scripts I've put at your disposal.
</p>

<h1>QUALITY CONTROL</h1>
<h2>1- Setting up the QC environment </h2>
python3 -m pip install --upgrade pip</br>
conda create -n Quality_Control python=3</br>
conda activate Quality_Control</br>

<h2>2- Install Tools</h2> 

<h3>2.1- Short Reads</h3>

conda install -c bioconda fastqc multiqc fastp

<h3>2.2- Long Reads</h3>

pip install NanoPlot</br>
NanoPlot --help</br>

pip install NanoFilt</br>
NanoFilt --help</br>

<h1>MAPPING</h1>
<h2>1- Setting up the mapping environment </h2>
python3 -m pip install --upgrade pip</br>
conda create -n Mapping python=3</br>
conda activate Mapping</br>

<h2>2- Install Tools</h2> 

<h3>2.1- Short Reads</h3>

<h3>2.2- Long Reads</h3>

<h1>ASSEMBLY</h1>
<h2>1- Setting up the assembly environment </h2>

python3 -m pip install --upgrade pip</br>
conda create -n Spades python=3</br>
conda activate spades</br>
conda deactivate Assembly_reads</br>
conda create -n Flye</br>
conda activate Flye</br>

<h2>2- Install Tools</h2> 

<h3>2.1- Short Reads</h3>
In the _Spades_ environment, run this following command</br>
conda install -c bioconda spades</br>
spades.py</br>

<h3>2.2- Long Reads</h3>
In the _Flye_ environment, run this following command</br>
conda install -c bioconda flye</br>
flye --help</br>

<h3>2.3- Visualiser assemblage</h3>

Download Bandate [here](rrwick.github.io/Bandage)</br> 
<strong>NB: Download, unzip and run bandage</strong>

pip3 install quast</br>
quast.py

<h3>2.4- Blast</h3>
 conda install -c bioconda blast</br>
 blastx -query scalfolds.fasta -subject base_donnees_reference -outfmt '6 qseqid qlen qstart qend sseqidslen sstart send bitscore evalue pident' -out blast.tsv
