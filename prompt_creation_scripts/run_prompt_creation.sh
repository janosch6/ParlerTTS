#!/usr/bin/env bash

python run_prompt_creation.py \
  --dataset_name "ylacombe/libritts_r_tags_and_text" \
  --dataset_config_name "clean" \
  --model_name_or_path "mistralai/Mistral-7B-Instruct-v0.2" \
  --per_device_eval_batch_size 256 \
  --attn_implementation "flash_attention_2" \
  --dataloader_num_workers 4 \
  --output_dir "./" \
  --load_in_4bit \
  --push_to_hub \
  --hub_dataset_id "sanchit-gandhi/libritts_r_tags_and_text_generated"