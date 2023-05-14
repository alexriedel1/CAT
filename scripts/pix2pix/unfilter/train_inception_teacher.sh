#!/usr/bin/env bash
python train.py --dataroot /content/filtered_notfiltered_match_align \
  --model pix2pix \
  --log_dir logs/pix2pix/unfilter/inception/teacher \
  --netG inception_9blocks \
  --batch_size 32 \
  --lambda_recon 10 \
  --nepochs 500 --nepochs_decay 1000 \
  --num_threads 32 \
  --gpu_ids 0 \
  --norm batch \
  --norm_affine \
  --norm_affine_D \
  --norm_track_running_stats \
  --channels_reduction_factor 6 \
  --kernel_sizes 1 3 5 \
  --save_epoch_freq 50 --save_latest_freq 20000 \
  --eval_batch_size 16 \
  --direction AtoB
