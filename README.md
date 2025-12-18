# MSI_SR
## Enhancing super-resolution for mass spectrometry imaging via deep learning methods

Three deep learning based super-resolution models, SwinIR, MambaIR, and ResShift, were compared with MOSR serving as a control. The evaluation based on three MSI datasets and six quality metrics, indicated that MOSR and a bicubic pre-trained model of ResShift (ResShift_B) were more proficient in capturing complex textures. The MSI_SR model was fine-tuned based on the ResShift_B model using only a few mouse brain sagittal images. Generalization performance on other MSI images demonstrate that the fine-tuned model, trained on a small dataset, can be effectively applied to images of different tissues, holding great potential for various applications in the MSI-related research.

<div align="center"> <img src="https://github.com/bioinfo-ibms-pumc/MSI_SR/blob/main/workflow.png"> </div>

## Introduction
A high spatial resolution understanding of metabolite distribution is crucial for revealing biological mechanisms and disease biomarkers. While mass spectrometry imaging (MSI) can show this distribution, its current resolution often falls short. Existing images lack precision for fine-scale molecular variations and data acquisition is time-consuming. Thus, developing super-resolution models for MSI is essential to address this challenge.

## System Requirements
### Hardware requirements
We suggest using a atandard computer with enough GPU memory (At least 6 GB, e.g. NVIDIA RTX3090) to load the model.
### Software requirements
In this work, ResShift, the diffusion model was employed to build the variant model. Therefore, software requiredments should be consistent with ResShift. Including: Python 3.10, Pytorch 2.1.2, NVIDIA GPU + CUDA, Linux. Please see the major requirements from ResShift[https://github.com/zsyOAOA/ResShift].
### Installation guide
1. Download ResShift from Github[https://github.com/zsyOAOA/ResShift].
2. Setup environment
   ```
   conda create -n resshift python=3.10
   conda activate resshift
   pip install -r requirements.txt
   ```
3. Download MSI_SR and put files and directories into ResShift folder.
4. Download weights, unzipped, and put the directory into ResShift folder.

## Demo
1. The find-tuned model is released as v1.0.0, and the DEMO Low-Resolution images are in the testdata/folder.
2. Modify the shell file named as run.sh, and make sure the correct paths for both the input low-resolution image directory.
3. Inference. Run the following command, and the images are reconstructed in less than one minute. The test.py is in the directory of ResShift.
   ```
   sh run.sh
   ```
