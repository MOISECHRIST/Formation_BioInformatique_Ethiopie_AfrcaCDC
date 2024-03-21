# Formation_BioInformatique_Ethiopie_AfrcaCDC
<p>
The bioinformatics training that Africa CDC organized for Central Africa was an excellent one for me. During this training I learned a lot of basic theoretical concepts and did a lot of practical work. 
In this git repository I share with you all the results I got through the many practical works I did.</br>
First of all, I advise you to follow this short tutorial to set up your environment before you can use the various scripts I've put at your disposal.
</p>

<h2>QUALITY CONTROL</h2>
<h3>1- Setting up the QC environment </h3>
python3 -m pip install --upgrade pip</br>
conda create -n Quality_Control python=3</br>
conda activate Quality_Control</br>

<h3>2- Install Tools</h3> 

<h4>2.1- Short Reads</h4>

conda install -c bioconda fastqc multiqc fastp

<h4>2.2- Long Reads</h4>

pip install NanoPlot</br>
NanoPlot --help</br>

pip install NanoFilt</br>
NanoFilt --help</br>

<h2>MAPPING</h2>
<h3>1- Setting up the mapping environment </h3>
python3 -m pip install --upgrade pip</br>
conda create -n Mapping python=3</br>
conda activate Mapping</br>

<h3>2- Install Tools</h3> 

<h4>2.1- Short Reads</h4>

<h4>2.2- Long Reads</h4>

<h2>DE NOVO ASSEMBLY</h2>
<h3>1- Setting up the assembly environment </h3>

python3 -m pip install --upgrade pip</br>
conda create -n Spades python=3</br>
conda activate spades</br>
conda deactivate Assembly_reads</br>
conda create -n Flye</br>
conda activate Flye</br>
bash Assembly\ Workflow/structure.sh</br>

<h3>2- Install Tools</h3> 

<h4>2.1- Short Reads</h4>
In the _Spades_ environment, run this following command</br>
conda install -c bioconda spades</br>
spades.py</br>

<h4>2.2- Long Reads</h4>
In the _Flye_ environment, run this following command</br>
conda install -c bioconda flye</br>
flye --help</br>

<h4>2.3- Visualiser assemblage</h4>

Download Bandate [here](rrwick.github.io/Bandage)</br> 
<strong>NB: Download, unzip and run bandage</strong>

pip3 install quast</br>
quast.py

<h3>2.4- Blast</h3>
 conda install -c bioconda blast</br>
 blastx -query scalfolds.fasta -subject base_donnees_reference -outfmt '6 qseqid qlen qstart qend sseqidslen sstart send bitscore evalue pident' -out blast.tsv
