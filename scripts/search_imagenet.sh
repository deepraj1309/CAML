#!/bin/sh

export GPU_ID=$1

echo $GPU_ID
cd ..
export DATASET_DIR="datasets/"
export CUDA_VISIBLE_DEVICES=$GPU_ID
# Activate the relevant virtual environment:
python train_maml_system.py --name_of_args_json_file configs/search_imagenet.json --gpu_to_use $GPU_ID