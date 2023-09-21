## LLMs - GPUs / Memory required

### We have 40G and 80G A100s on Sol. Specify the memory required (--mem=XXXG) and number of GPU resources required (gpu:a100:X) accordingly.
### If you want to reserve the entire node with max 4 GPUs, leave the number of cores field as blank.

1. [LLaMa2-chat](https://huggingface.co/meta-llama/Llama-2-70b-chat-hf)
Model Developers: Meta\
Variations Llama 2 comes in a range of parameter sizes — 7B, 13B, and 70B — as well as pretrained and fine-tuned variations.\
Input Models input text only.\
Output Models generate text only.\
Model Architecture Llama 2 is an auto-regressive language model that uses an optimized transformer architecture. The tuned versions use supervised fine-tuning (SFT) and reinforcement learning with human feedback (RLHF) to align to human preferences for helpfulness and safety.\
**[LICENSE: Meta License](https://ai.meta.com/resources/models-and-libraries/llama-downloads/)**

You have to specify the path instead of model id in this case as shown below (the "/" in the end is important):

model_id = f"{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/Llama2-70b-chat-hf/"
(Change the number of parameters in the name)

Approx memory required:

| #Parameters | Original Model | dtype=bfloat16 | load_in_8bits=True |
|-------------|----------------|----------------|--------------------|
| 7b          | 26G            | 13G            | 7G                 |
| 13b         | 49G            | 24G            | 13G                |
| 70b         | 257G           | 128G           | 67G                |

2. [Falcon / Falcon-instruct](https://huggingface.co/tiiuae/falcon-40b-instruct)
Developed by: https://www.tii.ae \
Model type: Causal decoder-only\
Language(s) (NLP): English and French\
**LICENSE: Apache 2.0;**\
Finetuned from model: Falcon-40B.

model_id = "tiiuae/falcon-7b" or \
model_id = "tiiuae/falcon-7b-instruct" \
(Change the number of parameters in the name)

Approx memory required:

| #Parameters | Original Model | dtype=bfloat16 | load_in_8bits=True |
|-------------|----------------|----------------|--------------------|
| 7b          | 25G            | 13G            | 8G                 |
| 40b         | 156G           | 78G            | 42G                |

3. [StableBeluga2](https://huggingface.co/stabilityai/StableBeluga2)
Developed by: Stability AI\
Model type: Stable Beluga 2 is an auto-regressive language model fine-tuned on Llama2 70B.\
Language(s): English\
License: Fine-tuned checkpoints (Stable Beluga 2) is licensed under the STABLE BELUGA NON-COMMERCIAL COMMUNITY LICENSE AGREEMENT\
Contact: For questions and comments about the model, please email lm@stability.ai\
**[LICENSE](https://huggingface.co/stabilityai/StableBeluga2/blob/main/LICENSE.txt)**

model_id = "stabilityai/StableBeluga2"

Approx memory required:

| #Parameters | Original Model | dtype=bfloat16 | load_in_8bits=True |
|-------------|----------------|----------------|--------------------|
| 70b         | 257G           | 128G           | 66G                |

4. [MPT / MPT-chat / MPT-instruct](https://huggingface.co/mosaicml/mpt-30b-instruct)
This model was trained by MosaicML and follows a modified decoder-only transformer architecture.
**LICENSE: CC-By-SA-3.0**

model_id = 'mosaicml/mpt-30b-instruct' or \
model_id = 'mosaicml/mpt-30b-chat' or \
model_id = 'mosaicml/mpt-30b'

Approx memory required:

| #Parameters | Original Model | dtype=bfloat16 | load_in_8bits=True |
|-------------|----------------|----------------|--------------------|
| 30b         | 111G           | 55G            | 30G                |

5. [CodeLlama / CodeLlama-Python / CodeLlama-instruct](https://huggingface.co/codellama/CodeLlama-34b-Instruct-hf)
Use of this model is governed by the Meta license. Meta developed and publicly released the Code Llama family of large language models (LLMs).

Variations Code Llama comes in three model sizes, and three variants:
Code Llama: base models designed for general code synthesis and understanding
Code Llama - Python: designed specifically for Python
Code Llama - Instruct: for instruction following and safer deployment
All variants are available in sizes of 7B, 13B and 34B parameters.

Input Models input text only.
Output Models generate text only.
Model Architecture Code Llama is an auto-regressive language model that uses an optimized transformer architecture.

A custom commercial license is available at:\
[LICENSE](https://ai.meta.com/resources/models-and-libraries/llama-downloads/)

model_id = "codellama/CodeLlama-7b-hf" or \
model_id = "codellama/CodeLlama-7b-Python-hf" or \
model_id = "codellama/CodeLlama-7b-instruct-hf" \
(Change the number of parameters in the name)

Approx memory required:

| #Parameters | Original Model | dtype=bfloat16 | load_in_8bits=True |
|-------------|----------------|----------------|--------------------|
| 7b          | 26G            | 12G            | x                  |
| 13b         | 49G            | 25G            | x                  |
| 34b         | 126G           | 64G            | x                  |

6. [falcon-180b / falcon-180b-chat](https://huggingface.co/tiiuae/falcon-180B-chat)

It is made available under the [Falcon-180B TII License](https://falconllm.tii.ae/terms-and-conditions.html) and [Acceptable Use Policy](https://falconllm.tii.ae/acceptable-use-policy.html).

Developed by: https://www.tii.ae \
Model type: Causal decoder-only\
Language(s) (NLP): English, German, Spanish, French (and limited capabilities in Italian, Portuguese, Polish, Dutch, Romanian, Czech, Swedish)\
License: Falcon-180B TII License and Acceptable Use Policy.

PLEASE READ THE LICENSE AND ACCEPTABLE USE POLICY BEFORE USING THE MODEL. \
You have to specify the path instead of model id in this case as shown below (the "/" in the end is important): \

model_id = "{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/falcon-180B/" or \
model_id = "{os.environ['HUGGINGFACE_HUB_CACHE']}/licensed_models/falcon-180B-chat/"

Approx memory required:

| #Parameters | Original Model    | dtype=bfloat16     | load_in_8bits=True| load_in_4bits=True |
|-------------|-------------------|--------------------|------------------ |--------------------|
| 180b        | 335G              | 298G               | 178G              | 119G               |
|             |(Not possible with |(Not possible with  |(Not possible with |                    |
|             |current h/w)       |current h/w)        |40G A100s)         |                    |
