#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename
# job standard output will go to the file slurm-%j.out (where %j is the job ID)

#SBATCH --time=10:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=1   # 1 processor core(s) per node 
#SBATCH --gres=gpu:1
#SBATCH --partition=gpu    # gpu node(s)
#SBATCH --job-name="YOLO"
#SBATCH --mail-user=jrrade@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load miniconda3
source activate yolov5


# python test_modified.py --weights ./runs_sgd/train/AFM_bs_16_e_500_with_rect_without_mosiac_without_Probe_FineTuning_from_original_folder/weights/best.pt --data data/afm_without_probe.yaml --save-txt --save-hybrid --conf-thres 0.001 --iou-thres 0.65 --device 0 --name AFM_bs_16_e_500_with_rect_without_mosiac_without_Probe_FineTuning_from_original_folder

# python detect_modified.py --weights ./runs_sgd/train/AFM_bs_16_e_500_with_rect_without_mosiac_without_Probe_FineTuning_from_original_folder/weights/best.pt --source /data/Jaydeep/AFM/dataset_without_Probe/images/validation --save-txt --save-conf --conf-thres 0.25 --iou-thres 0.45 --device 0 --name AFM_bs_16_e_500_with_rect_without_mosiac_without_Probe_FineTuning_from_original_folder


# train_dir="/data/Jaydeep/AFM/yolov3_secondRun_for_RevisedPaper/runs/train"
# for entry in  "$train_dir"/*
# do
# 	# echo $entry
# 	fname=$(basename $entry)
# 	# echo $fname
# 	python test_modified.py --weights ./runs/train/$fname/weights/best.pt --data data/afm_without_probe.yaml --save-txt --save-hybrid --conf-thres 0.001 --iou-thres 0.65 --device 0 --name $fname

# 	python detect_modified.py --weights ./runs/train/$fname/weights/best.pt --source /data/Jaydeep/AFM/dataset_without_Probe/images/validation --save-txt --save-conf --conf-thres 0.25 --iou-thres 0.45 --device 0 --name $fname

# done


python test_modified.py --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001/weights/best.pt --data data/afm_lowResolution.yaml --save-txt --save-hybrid --conf-thres 0.001 --iou-thres 0.65 --device 0 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001_lowResolution

python detect_modified.py --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001/weights/best.pt --source /data/Jaydeep/AFM/dataset_lowResolution/images/validation --save-txt --save-conf --conf-thres 0.25 --iou-thres 0.45 --device 0 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001_lowResolution
