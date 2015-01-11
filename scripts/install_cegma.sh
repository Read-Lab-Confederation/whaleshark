#! /bin/bash
# Install CEGMA
mkdir -p CEGMA/src
mkdir CEGMA/bin
cd CEGMA/

# Install requirements
# geneid 1.4.4
wget -P $(pwd)/src ftp://genome.crg.es/pub/software/geneid/geneid_v1.4.4.Jan_13_2011.tar.gz
tar -C $(pwd)/src -xzvf $(pwd)/src/geneid_v1.4.4.Jan_13_2011.tar.gz
make -C $(pwd)/src/geneid
ln -s $(pwd)/src/geneid/bin/geneid $(pwd)/bin/geneid

# genewise & HMMER
sudo apt-get install wise hmmer

# NCBI BLAST 2.2.29
wget -P $(pwd)/src ftp://ftp.ncbi.nlm.nih.gov/blast/executables/blast+/LATEST/ncbi-blast-2.2.29+-x64-linux.tar.gz
tar -C $(pwd)/src -xzvf $(pwd)/src/ncbi-blast-2.2.29+-x64-linux.tar.gz
ls $(pwd)/src/ncbi-blast-2.2.29+/bin/ | xargs -I {} ln -s $(pwd)/src/ncbi-blast-2.2.29+/bin/{} $(pwd)/bin/{}

# CEGMA
git clone git@github.com:KorfLab/CEGMA_v2.git src/CEGMA
make -C $(pwd)/src/CEGMA
ls $(pwd)/src/CEGMA/bin/ | xargs -I {} ln -s $(pwd)/src/CEGMA/bin/{} $(pwd)/bin/{}
