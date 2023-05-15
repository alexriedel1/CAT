#!/usr/bin/env bash
python train.py --dataroot /content/filtered_notfiltered_match_align \
  --model pix2pix \
  --log_dir /content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs \
  --netG inception_9blocks \
  --batch_size 16 \
  --load_size 412 \
  --crop_size 384 \
  --lambda_recon 10 \
  --nepochs 20 --nepochs_decay 100 \
  --num_threads 0 \
  --gpu_ids 0 \
  --norm batch \
  --norm_affine \
  --norm_affine_D \
  --norm_track_running_stats \
  --channels_reduction_factor 6 \
  --kernel_sizes 1 3 5 \
  --save_epoch_freq 1 --save_latest_freq 2000 \
  --eval_batch_size 8 \
  --direction AtoB \
  --b2b_prob 0.0 \
  --preprocess resize_and_crop