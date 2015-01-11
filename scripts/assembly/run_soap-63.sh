#! /bin/bash
MIN_CONTIG=200
K=29
MAX_K=63
GENOME_SIZE=3500000000
CONFIG_FILE=/data1/home/alam/whaleShark/assembly/SOAPdenovo.config
NUM_CPU=23

while [ ${K} -le ${MAX_K} ]; do
    OUT_DIR=${K}_SOAPdenovo
    echo "Working on ${K}"
    mkdir ${OUT_DIR}
    
    if [ ! -f ${OUT_DIR}/whale_shark.preGraphBasic ] ; then
        SOAPdenovo-63mer sparse_pregraph -s ${CONFIG_FILE} -K ${K} -z ${GENOME_SIZE} -R -p ${NUM_CPU} -o ${OUT_DIR}/whale_shark 1> ${OUT_DIR}/sparse_pregraph.log 2> ${OUT_DIR}/sparse_pregraph.err
    fi
    
    if [ ! -f ${OUT_DIR}/whale_shark.contig ] ; then
        SOAPdenovo-63mer contig -g ${OUT_DIR}/whale_shark -p ${NUM_CPU} -M 2  1> ${OUT_DIR}/contig.log 2> ${OUT_DIR}/contig.err
    fi
    
    if [ ! -f ${OUT_DIR}/whale_shark.readOnContig.gz ] ; then
        SOAPdenovo-63mer map -s ${CONFIG_FILE} -g ${OUT_DIR}/whale_shark -p ${NUM_CPU} 1> ${OUT_DIR}/map.log 2> ${OUT_DIR}/map.err
    fi
    
    if [ ! -f ${OUT_DIR}/whale_shark.scafSeq ] ; then
        SOAPdenovo-63mer scaff -N ${GENOME_SIZE} -g ${OUT_DIR}/whale_shark -p ${NUM_CPU} -L ${MIN_CONTIG} 1> ${OUT_DIR}/scaff.log 2> ${OUT_DIR}/scaff.err
    fi
    
    K=$((K+2))
done
