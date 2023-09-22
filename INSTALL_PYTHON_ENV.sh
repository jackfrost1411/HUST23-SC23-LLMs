#!/bin/bash
# Script to install the mamba Python Environment, genai.
###
env_name="genai"
channels=(
  -c pytorch 
  -c nvidia 
  -c conda-forge
)
pkgs=(
  pytorch 
  torchvision 
  torchaudio 
  pytorch-cuda=11.8
  openai 
  langchain 
  huggingface_hub 
  transformers 
  sentence-transformers
  einops
  accelerate
  pypdf
  chromadb
  gradio
  # for Jupyter accessibility
  ipykernel 
  ipywidgets
)
mamba create -n "$env_name" "${channels[@]}" "${pkgs[@]}"
source activate "$env_name"
pip_pkgs=(
  bitsandbytes 
  InstructorEmbedding 
  git+https://github.com/huggingface/diffusers
)
pip install "${pip_pkgs[@]}"

cat << EOF
[32;1m
========================================================================
| Installation of env 
|     $env_name 
| is complete. 
========================================================================
[33;1m
vvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
> DO NOT FORGET: CREATE THE JUPYTER KERNEL
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
[0m
EOF
