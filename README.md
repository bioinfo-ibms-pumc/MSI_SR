# MSI_SR
Enhancing super-resolution for mass spectrometry imaging via deep learning methods

While mass spectrometry imaging (MSI) can show this distribution, its current resolution often falls short. For super resolution(SR) tasks,we selected the diffusion model from Based on the investigavtion of for SR tasksfor diffusion model, transformation model and mamba model, we select create a a fine-tuned model was trained from ResShift.

## Introduction
xxx

## System Requirements
### Hardware requirements
We suggest using a atandard computer with enough GPU memory (At least 6 GB, e.g. NVIDIA RTX3090) to load the model.
### Software requirements and Installation guide
In this work, ResShift, the diffusion model was employed to build the variant model. Therefore, software requiredments should be consistent with ResShift. Including: Python 3.10, Pytorch 2.1.2, NVIDIA GPU + CUDA, Linux. Please see the major requirements from ResShift[https://github.com/zsyOAOA/ResShift].

## Demo
1. The find-tuned model is released as v1.0.0, and the DEMO Low-Resolution images are in the images/test/folder.
2. Modify the config file in options/test/test_ResShift.yml, and make sure the correct paths for both the image and model.
3. Inference. Run the following command, and the images are reconstructed in less than one minute. The test.py is in the directory of ResShift.
   ```
   python
   ```
