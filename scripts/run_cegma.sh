#! /bin/bash
# CEGMA might complain about the FASTA headers
# Go to assembly directory and run the following commands
#
# find ./ -type f -name "*.contig" -exec sed -i.old '/^>/s/ /_/g' "{}" +;
# find ./ -type f -name "*.scafSeq" -exec sed -i.old '/^>/s/ /_/g' "{}" +;
#
# These commands will replace spaces with underscores
# Run CEGMA

# Export Environment Variables
export PATH=$(pwd)/bin:$PATH
export CEGMA=$(pwd)/src/CEGMA/
export PERL5LIB=$(pwd)/src/CEGMA/lib/

mkdir runs

# kmers 57-69 (63 presumed to be best)
THREADS=23
K=57
MAX_K=69
ASSEMBLY_DIR=/data1/home/rpetit/readgp/Whale_Shark/WS_Assembly/assembly

while [ ${K} -le ${MAX_K} ]; do
    OUT=runs/${K}
    mkdir ${OUT}
    ASSEMBLY=${ASSEMBLY_DIR}/${K}_SOAPdenovo/whale_shark
    
    # Contigs
    echo "Working on ${K} -- Contigs"
    cegma --genome ${ASSEMBLY}.contig -T ${THREADS} -o ${OUT}/contigs 1> ${OUT}/contigs.stdout 2> ${OUT}/contigs.stderr
    # Scaffolds
    echo "Working on ${K} -- Scaffolds"
    cegma --genome ${ASSEMBLY}.scafSeq -T ${THREADS} -o ${OUT}/scaffolds 1> ${OUT}/scaffolds.stdout 2> ${OUT}/scaffolds.stderr
    
    K=$((K+2))
done 
