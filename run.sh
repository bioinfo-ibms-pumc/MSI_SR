#########################################################################
#	File Name: run.sh
#	> Author: CaoYinghao
#	> Mail: caoyinghao@gmail.com 
#########################################################################
#!/bin/bash
indir=./testdata
outdir=./result
CUDA_VISIBLE_DEVICES=0 python inference_resshift_mod.py -i $indir -o $outdir --task bicsr --scale 4 --seed 1
