# CityWalker: Learning Embodied Urban Navigation from Web-Scale Videos

### TL;DR: CityWalker leverages thousands of hours of online city walking and driving videos to train autonomous agents for robust, generalizable navigation in dynamic urban environments through scalable, data-driven imitation learning.

<a href='https://arxiv.org/abs/2411.17820'><img src='https://img.shields.io/badge/Paper-arXiv-red'></a> <a href='https://ai4ce.github.io/CityWalker/'><img src='https://img.shields.io/badge/Project-hompage-green'></a> <a href='https://huggingface.co/datasets/ai4ce/CityWalker'><img src='https://img.shields.io/badge/%F0%9F%A4%97%20Hugging%20Face-Dataset-blue'></a>

[Xinhao Liu](https://gaaaavin.github.io/)\*,
[Jintong Li](.)\*, 
[Yicheng Jiang](.),
[Niranjan Sujay](.),
[Zhicheng Ynag](.),
[Juexiao Zhang](https://juexzz.github.io/),
[John Abanes](.),
[Jing Zhang](https://jingz6676.github.io/), 
[Chen Feng](https://engineering.nyu.edu/faculty/chen-feng)†

![](./src/nav.gif)

# Getting Started
## Installation
The project should be compatible with latest Pytorch and CUDA versions. The code is tested with Python 3.11, PyTorch 2.5.0, and CUDA 12.1. To install the dependencies, run:
```
conda env create -f environment.yml
conda activate citywalker
```

## Data Preparation
Please see [dataset/README.md](./dataset/README.md) for details on how to prepare the dataset.

## Training
To train the model, run:
```
python train.py --config configs/citywalk_2000hr.yaml
```
We provide our **pretrained model** in the [releases tab](https://github.com/ai4ce/CityWalker/releases).

## Fine-tuning
To fine-tune the model, run:
```
python fine_tune.py --config configs/citywalk_2000hr.yaml --checkpoint <path_to_checkpoint>
```

## Testing
To test the model, run:
```
python test.py --config configs/citywalk_2000hr.yaml --checkpoint <path_to_checkpoint>
```

# Citation
```
@article{liu2024citywalker,
  title={CityWalker: Learning Embodied Urban Navigation from Web-Scale Videos},
  author={Liu, Xinhao and Li, Jintong and Jiang, Yicheng and Sujay, Niranjan and Yang, Zhicheng and Zhang, Juexiao and Abanes, John and Zhang, Jing and Feng, Chen},
  journal={arXiv preprint arXiv:2411.17820},
  year={2024}
}
```

# Acknowledgements
The work was supported by NSF grants 2238968, 2121391, 2322242 and 2345139; and in part through the NYU IT High Performance Computing resources, services, and staff expertise. We thank Xingyu Liu and Zixuan Hu for their help in data collection.

We also thank the authors of the following repositories for their open-source implementations:
* [ViNT: A Foundation Model for Visual Navigation](https://github.com/robodhruv/visualnav-transformer), CoRL 2023
* [NoMaD: Goal Masked Diffusion Policies for Navigation and Exploration](https://github.com/robodhruv/visualnav-transformer), ICRA 2024
