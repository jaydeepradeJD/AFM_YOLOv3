#!/bin/bash

# Copy/paste this job script into a text file and submit with the command:
#    sbatch thefilename
# job standard output will go to the file slurm-%j.out (where %j is the job ID)

#SBATCH --time=100:00:00   # walltime limit (HH:MM:SS)
#SBATCH --nodes=1   # number of nodes
#SBATCH --ntasks-per-node=1   # 1 processor core(s) per node 
#SBATCH --mem=50G   # maximum memory per node
#SBATCH --gres=gpu:2
#SBATCH --partition=gpu    # gpu node(s)
#SBATCH --job-name="YOLO"
#SBATCH --mail-user=jrrade@iastate.edu   # email address
#SBATCH --mail-type=BEGIN
#SBATCH --mail-type=END
#SBATCH --mail-type=FAIL

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
module load miniconda3
source activate yolov5

# python train.py --batch-size 16 --epochs 500 --rect --data afm_old.yaml --weights yolov3.pt --cfg ./models/yolov3.yaml --device 0,1 --adam --name AFM_bs_16_e_500_with_rect_without_mosiac_ 

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --adam --name AFM_bs_16_e_500_with_rect_without_mosiac_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --adam --name AFM_bs_16_e_1000_with_rect_without_mosiac_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --adam --name AFM_bs_32_e_500_with_rect_without_mosiac_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --adam --name AFM_bs_32_e_1000_with_rect_without_mosiac_without_Probe_FineTuning






# python train.py --batch-size 16 --epochs 500 --rect --data afm_old.yaml --weights yolov3.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_1000_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_32_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_32_e_1000_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 250 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_250_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.0001

python train.py --batch-size 32 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs/train/AFM_bs_16_e_500_with_rect_without_mosiac_sgd/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_32_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001




# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_1000_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_32_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 1000 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_32_e_1000_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 250 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_250_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001

# python train.py --batch-size 16 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1,2,3 --name AFM_bs_16_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.0001

# python train.py --batch-size 16 --epochs 100 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_100_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 200 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_200_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 16 --epochs 700 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_16_e_700_with_rect_without_mosiac_sgd_without_Probe_FineTuning

# python train.py --batch-size 32 --epochs 500 --rect --data afm_without_probe.yaml --weights ./runs_sgd_from_original_folder/train/AFM_bs_16_e_500_with_rect_without_mosiac_from_original_folder/weights/best.pt --cfg ./models/yolov3.yaml --device 0,1 --name AFM_bs_32_e_500_with_rect_without_mosiac_sgd_without_Probe_FineTuning_lr0_0.001
