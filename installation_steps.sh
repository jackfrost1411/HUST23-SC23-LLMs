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
)
mamba create -n genai23.09 "${channels[@]}" "${pkgs[@]}"
source activate genai23.09
pip_pkgs=(
  bitsandbytes 
  InstructorEmbedding 
  git+https://github.com/huggingface/diffusers
)
pip install "${pip_pkgs[@]}"
