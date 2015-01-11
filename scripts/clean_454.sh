# 1. G0LLCGL01
prinseq-lite.pl -fastq G0LLCGL01.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good G0LLCGL01_good -out_bad G0LLCGL01_bad \
-out_format 3 \
-log G0LLCGL01 \
1>out.txt 2>error.txt &

# 2. G0LLCGL02
prinseq-lite.pl -fastq G0LLCGL02.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good G0LLCGL02_good -out_bad G0LLCGL02_bad \
-out_format 3 \
-log G0LLCGL02 \
1>out.txt 2>error.txt &

# 3. GZ290HF01
prinseq-lite.pl -fastq GZ290HF01.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good GZ290HF01_good -out_bad GZ290HF01_bad \
-out_format 3 \
-log GZ290HF01 \
1>out.txt 2>error.txt &

# 4. GZ290HF02
prinseq-lite.pl -fastq GZ290HF02.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good GZ290HF02_good -out_bad GZ290HF02_bad \
-out_format 3 \
-log GZ290HF02 \
1>out.txt 2>error.txt &

# 5. GZ29Y3E01
prinseq-lite.pl -fastq GZ29Y3E01.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good GZ29Y3E01_good -out_bad GZ29Y3E01_bad \
-out_format 3 \
-log GZ29Y3E01 \
1>out.txt 2>error.txt &

# 6. GZ29Y3E02
prinseq-lite.pl -fastq GZ29Y3E02.fastq \
-trim_qual_right 20 \
-trim_qual_type min \
-trim_qual_rule lt \
-trim_qual_window 1 \
-trim_qual_step 1 \
-min_len 70 \
-min_qual_mean 20 \
-ns_max_n 2 \
-out_good GZ29Y3E02_good -out_bad GZ29Y3E02_bad \
-out_format 3 \
-log GZ29Y3E02 \
1>out.txt 2>error.txt &
