# 1. AD09WVACXX
prinseq-lite.pl -fastq AD09WVACXX_R1.fastq -fastq2 AD09WVACXX_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good AD09WVACXX_good -out_bad AD09WVACXX_bad \
-out_format 3 \
-log AD09WVACXX \
1>out.txt 2>error.txt &

# 2. BCOT1RACXX
prinseq-lite.pl -fastq BCOT1RACXX_R1.fastq -fastq2 BCOT1RACXX_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good BCOT1RACXX_good -out_bad BCOT1RACXX_bad \
-out_format 3 \
-log BCOT1RACXX \
1>out.txt 2>error.txt &

# 3. D0F34ACXX
prinseq-lite.pl -fastq D0F34ACXX_R1.fastq -fastq2 D0F34ACXX_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good D0F34ACXX_good -out_bad D0F34ACXX_bad \
-out_format 3 \
-log D0F34ACXX \
1>out.txt 2>error.txt &

# 4. liver
prinseq-lite.pl -fastq liver_R1.fastq -fastq2 liver_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good liver_good -out_bad liver_bad \
-out_format 3 \
-log liver \
1>out.txt 2>error.txt &

# 5. spleen1
prinseq-lite.pl -fastq spleen1_R1.fastq -fastq2 spleen1_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good spleen1_good -out_bad spleen1_bad \
-out_format 3 \
-log spleen1 \
1>out.txt 2>error.txt &

# 6. spleen2
prinseq-lite.pl -fastq spleen2_R1.fastq -fastq2 spleen2_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good spleen2_good -out_bad spleen2_bad \
-out_format 3 \
-log spleen2 \
1>out.txt 2>error.txt &

# 7. ADO10785S2
prinseq-lite.pl -fastq ADO10785S2_R1.fastq -fastq2 ADO10785S2_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good ADO10785S2_good -out_bad ADO10785S2_bad \
-out_format 3 \
-log ADO10785S2 \
1>out.txt 2>error.txt &

# 8. ADO10785S3
prinseq-lite.pl -fastq ADO10785S3_R1.fastq -fastq2 ADO10785S3_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good ADO10785S3_good -out_bad ADO10785S3_bad \
-out_format 3 \
-log ADO10785S3 \
1>out.txt 2>error.txt &

# 9. C4BCWACXX
prinseq-lite.pl -fastq C4BCWACXX_R1.fastq -fastq2 C4BCWACXX_R2.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good C4BCWACXX_good -out_bad C4BCWACXX_bad \
-custom_params "AGATCGGAAGAGCACACGTCTGAACTCCAGTCACAGTTCCGTATCTCGTA 1;GATCGGAAGAGCACACGTCTGAACTCCAGTCACAGTTCCGTATCTCGTAT 1;AGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCC 1" \
-out_format 3 \
-log C4BCWACXX \
1>out.txt 2>error.txt &

# 10. D1259ACXX
prinseq-lite.pl -fastq D1259ACXX_R1.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good D1259ACXX_good -out_bad D1259ACXX_bad \
-out_format 3 \
-log D1259ACXX \
1>out.txt 2>error.txt &

