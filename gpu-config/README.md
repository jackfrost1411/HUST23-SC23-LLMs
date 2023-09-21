GPU Config for Using LLMs
=========================

We have 40 GiB and 80 GiB SXM4 A100s on the Sol supercomputer, from where these
materials were prepared. For ASU researchers, or others with similar hardware
that's scheduled through SLURM, `X` GiB of memory may be allocated with option
`--mem=XG`, and the number `Y` of 80 GiB A100s to allocate may be specified with 
`-G Y`. If full nodes are required, the flags `--exclusive` and `--mem=0`
will appropriately allocate all cores, memory, and GPUs.

LLMs - GPUs and Memory required
-------------------------------

### 1. [LLaMa2-chat](https://huggingface.co/meta-llama/Llama-2-70b-chat-hf)  

Model Developers: Meta     

**Variations**. Llama 2 comes in a range of parameter sizes: 7, 13, and 70
billion -- as well as pretrained and fine-tuned variations.     

**Input Models**. 
Input text only.     

**Output Models**. 
Generate text only.     

**Model Architecture**.
Llama 2 is an auto-regressive language model that uses an optimized transformer
architecture. The tuned versions use supervised fine-tuning (SFT) and
reinforcement learning with human feedback (RLHF) to align to human preferences
for helpfulness and safety.     

**[LICENSE: Meta License](https://ai.meta.com/resources/models-and-libraries/llama-downloads/)**

You have to specify the path instead of model id in this case as shown below
(the "/" in the end is important):

```python
model_id = f"{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/Llama2-70b-chat-hf/"
```
(Change the number of parameters in the name)

Approximate memory required:


| # Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` |
|--------------|-------------------|----------------------|----------------------|
| 7 billion    | 26 GiB            | 13 GiB               | 7 GiB                |
| 13 billion   | 49 GiB            | 24 GiB               | 13 GiB               |
| 70 billion   | 257 GiB           | 128 GiB              | 67 GiB               |


### 2. [Falcon / Falcon-instruct](https://huggingface.co/tiiuae/falcon-40b-instruct)     

Developed by: https://www.tii.ae     

Model type: Causal decoder-only     

Language(s) (NLP): English and French     

**LICENSE: Apache 2.0;**     

Fine-tuned from model: Falcon-40B.

`model_id = "tiiuae/falcon-7b"` or     

`model_id = "tiiuae/falcon-7b-instruct"`      

(Change the number of parameters in the name)

Approximate memory required:



| # Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` |
|--------------|-------------------|----------------------|----------------------|
| 7 billion    | 25 GiB            | 13 GiB               | 8 GiB                |
| 40 billion   | 156 GiB           | 78 GiB               | 42 GiB               |



### 3. [StableBeluga2](https://huggingface.co/stabilityai/StableBeluga2)     

Developed by: Stability AI     

Model type: Stable Beluga 2 is an auto-regressive language model fine-tuned on Llama2 70B.     

Language(s): English     

License: Fine-tuned checkpoints (Stable Beluga 2) is licensed under the STABLE
BELUGA NON-COMMERCIAL COMMUNITY LICENSE AGREEMENT     

Contact: For questions and comments about the model, please email
lm@stability.ai     

**[LICENSE](https://huggingface.co/stabilityai/StableBeluga2/blob/main/LICENSE.txt)**

`model_id = "stabilityai/StableBeluga2"`    

Approximate memory required:



| # Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` |
|--------------|-------------------|----------------------|----------------------|
| 70 billion   | 257 GiB           | 128 GiB              | 66 GiB               |



### 4. [MPT / MPT-chat / MPT-instruct](https://huggingface.co/mosaicml/mpt-30b-instruct)     

This model was trained by MosaicML and follows a modified decoder-only
transformer architecture.

**LICENSE: CC-By-SA-3.0**

`model_id = 'mosaicml/mpt-30b-instruct'` or     

`model_id = 'mosaicml/mpt-30b-chat'` or     

`model_id = 'mosaicml/mpt-30b'`

Approximate memory required:



| # Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` |
|--------------|-------------------|----------------------|----------------------|
| 30 billion   | 111 GiB           | 55 GiB               | 30 GiB               |



### 5. [CodeLlama / CodeLlama-Python / CodeLlama-instruct](https://huggingface.co/codellama/CodeLlama-34b-Instruct-hf)     

Use of this model is governed by the Meta license. Meta developed and publicly
released the Code Llama family of large language models (LLMs).

**Variations**.
Code Llama comes in three model sizes, and three variants:
* Code Llama: base models designed for general code synthesis and understanding
* Code Llama - Python: designed specifically for Python
* Code Llama - Instruct: for instruction following and safer deployment
All variants are available in sizes of 7, 13 and 34 billion parameters.

**Input Models**.
Input text only.  

**Output Models**. 
Generate text only.  

**Model Architecture**. 
Code Llama is an auto-regressive language model that uses an optimized
transformer architecture.  

A custom commercial license is available at:     

[LICENSE](https://ai.meta.com/resources/models-and-libraries/llama-downloads/)     


`model_id = "codellama/CodeLlama-7b-hf"` or     

`model_id = "codellama/CodeLlama-7b-Python-hf"` or     

`model_id = "codellama/CodeLlama-7b-instruct-hf"`     

(Change the number of parameters in the name)

Approximate memory required:



| # Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` |
|--------------|-------------------|----------------------|----------------------|
| 7 billion    | 26 GiB            | 12 GiB               | x                    |
| 13 billion   | 49 GiB            | 25 GiB               | x                    |
| 34 billion   | 126 GiB           | 64 GiB               | x                    |



### 6. [falcon-180b / falcon-180b-chat](https://huggingface.co/tiiuae/falcon-180B-chat)     


It is made available under the [Falcon-180B TII
License](https://falconllm.tii.ae/terms-and-conditions.html) and [Acceptable
Use Policy](https://falconllm.tii.ae/acceptable-use-policy.html).

Developed by: https://www.tii.ae     

Model type: Causal decoder-only     

Language(s) (NLP): English, German, Spanish, French (and limited capabilities
in Italian, Portuguese, Polish, Dutch, Romanian, Czech, Swedish)     

License: Falcon-180B TII License and Acceptable Use Policy.

PLEASE READ THE LICENSE AND ACCEPTABLE USE POLICY BEFORE USING THE MODEL.     

You have to specify the path instead of model id in this case as shown below
(the `/` in the end is important):     


`model_id = "{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/falcon-180B/"` or     

`model_id = "{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/falcon-180B-chat/"`

Approximate memory required:



| #Parameters | Original Model    | `dtype=bfloat16`     | `load_in_8bits=True` | `load_in_4bits=True` |
|-------------|-------------------|----------------------|----------------------|----------------------|
| 180b        | 335 GiB           | 298 GiB              | 178 GiB              | 119 GiB              |
|             |(Not possible with |(Not possible with    |(Not possible with    |                      |
|             |current h/w)       |current h/w)          |40G A100s)            |                      |



