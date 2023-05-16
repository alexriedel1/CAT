#!/usr/bin/env bash
python train.py --dataroot /content/filtered_notfiltered_match_align \
  --model pix2pix \
  --log_dir "/content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs" \
  --netG inception_9blocks \
  --batch_size 1 \
  --load_size 412 \
  --crop_size 384 \
  --nepochs 200 --nepochs_decay 300 \
  --num_threads 0 \
  --gpu_ids 0 \
  --norm_track_running_stats \
  --channels_reduction_factor 6 \
  --save_epoch_freq 1 --save_latest_freq 2000 \
  --eval_batch_size 1 \
  --direction AtoB \
  --b2b_prob 0.0 \
  --preprocess resize_and_crop