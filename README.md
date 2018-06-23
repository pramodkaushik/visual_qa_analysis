# Analysis of a Visual Question Answering Model

The code in this repo analyzes [a visual question answering
model](https://arxiv.org/abs/1704.03162), and is based
on the implementation from [here](https://github.com/Cyanogenoid/pytorch-vqa).

## Initial setup

- Clone this repository with:
```
git clone https://github.com/Cyanogenoid/pytorch-vqa.git --recursive
```
- Set the paths to your downloaded [questions, answers, and MS COCO images][4] in `config.py`.
  - `qa_path` should contain the files `OpenEnded_mscoco_train2014_questions.json`, `OpenEnded_mscoco_val2014_questions.json`, `mscoco_train2014_annotations.json`, `mscoco_val2014_annotations.json`.
  - `train_path`, `val_path`, `test_path` should contain the train, validation, and test `.jpg` images respectively.
- Pre-process images (93 GiB of free disk space required for f16 accuracy) with [ResNet152 weights ported from Caffe][3] and vocabularies for questions and answers with:
```
python preprocess-images.py
python preprocess-vocab.py
```
- Train the model in `model.py` with:
```
python train.py
```
This will alternate between one epoch of training on the train split and one epoch of validation on the validation split while printing the current training progress to stdout and saving logs in the `logs` directory.
The logs contain the name of the model, training statistics, contents of `config.py`,  model weights, evaluation information (per-question answer and accuracy), and question and answer vocabularies.
- During training (which takes a while), plot the training progress with:
```
python view-log.py <path to .pth log>
```

## Python 3 dependencies (tested on Python 3.6.2)

- torch
- torchvision
- h5py
- tqdm

## Downloading results

Download the results from [this Dropbox folder]

Primary contact: **Pramod Kaushik
Mudrakarta**[pramodkm@uchicago.edu](mailto:pramodkm@uchicago.edu)

# Cite

Mudrakarta, Pramod Kaushik, Ankur Taly, Mukund Sundararajan, and Kedar Dhamdhere. "Did the Model Understand the Question?." arXiv preprint arXiv:1805.05492 (2018).

```
@article{mudrakarta2018did,
  title={Did the Model Understand the Question?},
  author={Mudrakarta, Pramod Kaushik and Taly, Ankur and Sundararajan, Mukund and Dhamdhere, Kedar},
  journal={arXiv preprint arXiv:1805.05492},
  year={2018}
}
```
