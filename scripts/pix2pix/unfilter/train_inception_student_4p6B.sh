#!/usr/bin/env bash
python distill.py --dataroot /content/filtered_notfiltered_match_align \
  --distiller inception \
  --log_dir "/content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs/inception/student/4p6B" \
  --restore_teacher_G_path "/content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs/checkpoints/best_net_G.pth" \
  --restore_pretrained_G_path "/content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs/checkpoints/best_net_G.pth" \
  --restore_D_path "/content/drive/MyDrive/AI Jobs/fiverr/engio1/pix2pix_CAT/logs/checkpoints/best_net_D.pth" \
  --nepochs 500 --nepochs_decay 1000 \
  --teacher_netG inception_9blocks --student_netG inception_9blocks \
  --pretrained_ngf 64 --teacher_ngf 64 --student_ngf 32 \
  --num_threads 0 \
  --eval_batch_size 2 \
  --batch_size 80 \
  --load_size 412 \
  --crop_size 384 \
  --gpu_ids 0 \
  --norm batch \
  --norm_affine \
  --norm_affine_D \
  --norm_track_running_stats \
  --channels_reduction_factor 6 \
  --kernel_sizes 1 3 5 \
  --direction AtoB \
  --b2b_prob 0.3 \
  --preprocess random_rsz \
  --lambda_distill 1.3 \
  --prune_cin_lb 16 \
  --target_flops 4.6e9 \
  --distill_G_loss_type ka
