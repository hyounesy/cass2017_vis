# Materials for the Visualization assignment for 2017 Czech-Austrian Summer School on "Deep Learning and Visual Data Analysis" 


## Software Requirements
Download the latest version of VisRseq from [visrseq.github.io](http://visrseq.github.io). Follow the installation requirements.


## Quick Tutorial
  * Download the small test data from [data/tiny](data/tiny)
  * Run VisRseq
  * Click on the toolbar button with the table icon (top left) and select [Open Table]
  * Open the data/tiny/circle file
  * Drag-n-Drop the [Table View] or [Scatter Plot] app from the Apps pane (bottom left) to the workspace.
  * Drag-n-Drop the mpg data from the data pane into the app window.
  * Change the app parameters using the Parameter pane (right)

  
![](images/tableview.png)
![](images/scatterplot.png)

#### [Presentation slides](Slides/VisRseq_Slides.pdf)

## Introduction
You will be using / extending VisRseq for visual analysis of parameter space exploration of neural networks inspired on the [web-based tensorflow playground demo](http://playground.tensorflow.org/). If you have not used the online tool previously we encourage you to spend some time with the online tool and get yourself familiarized with different parameters that affect outcome of a neural network.
We have created the datasets using our own [python implementation](https://github.com/hyounesy/TFPlaygroundPSA) of the online demo. So, while we have tried to keep our implementation as close as possible to the online demo, you may find subtle differences between the outcomes of the two.

There are a total of five different dataset. For all datasets, we have created random configurations of the netural network by picking random values for each of the hyper parameters. For each neural network configuration, we ran the training and recorded statistics about the results at different epochs.
For one of the datasets (full), we have randomized all parameters, including the input data shape and noise. For each of the other four datasets (circle, xor, gauss, spiral), we kept the data shape and noise fixed,and randomized all the other parameters.


## Datasets

 _ | data | Download Link | Description
----|----|----|----
![](images/full.png) | full | [full.zip (3.3 GB)](https://drive.google.com/uc?id=0Bz2L2qpV9PICa0s1blY4bGVMNzg&export=download)| random shapes and noises
![](images/circle.png) | circle_25 | [circle_25.zip (350MB)](https://drive.google.com/uc?id=0Bz2L2qpV9PICSzV0V1RwZVY3S00&export=download)| circle with 25% noise
![](images/gauss.png) | gauss_25 | [gauss_25.zip (350MB)](https://drive.google.com/uc?id=0Bz2L2qpV9PICLUxtUGtRR05KbTg&export=download)| gauss with 25% noise
![](images/xor.png) | xor_25 | [xor_25.zip (350 MB)](https://drive.google.com/uc?id=0Bz2L2qpV9PICeG45RkRPSFE5S28&export=download) | xor with 25% noise
![](images/spiral.png) | spiral_25 | [spiral_25.zip (350 MB)](https://drive.google.com/uc?id=0Bz2L2qpV9PICY29ONTNnX0lvczA&export=download) | spiral with 25% noise

Here are information about the fields: (TBD)

field | type | description
---- | ---- | ----
ID	|  | 
imagePath |  | 
data |  | 
noise |  | 
training_ratio |  | 
batch_size |  | 
X1 |  | 
X2 |  | 
X1Squared |  | 
X2Squared |  | 
X1X2 |  | 
sinX1 |  | 
sinX2 |  | 
layer_count |  | 
neuron_count |  | 
H1 |  | 
H2 |  | 
H3 |  | 
H4 |  | 
H5 |  | 
H6 |  | 
learning_rate |  | 
activation |  | 
regularization |  | 
regularization_rate |  | 
epoch |  | 
iteration |  | 
total_time |  | 
mean_time |  | 
train_loss |  | 
test_loss |  | 
train_TPR |  | 
train_FPR |  | 
test_TPR |  | 
test_FPR |  | 


## Assignment

There are two categories for this assignment: (1) Data Analysis, (2) App development / improvement. You may participate in either or both categories.

### (1) Data Analysis
You will be using VisRseq to create an [infographic](https://en.wikipedia.org/wiki/Infographic) or report about the datasets.
  * The submission will be in the form of a single page PDF document or PNG image. 
  * All plots in the infographic should be generated within the VisRseq framework, but you may use other software (e.g. MS Word, MS Powerpoint, Photoshop, etc.) to arrange several plots and to add additional text or graphics.
  * The submissions will be evaluated based on:
    * functionality / the amount of information content
    * clarity (i.e. ease of interpretation)
    * usability / interaction possibilities
    * interesting findings
Please describe your interesting/surprising findings in words as well by answering the following questions:
  
1. what did you learn about the relationship between the number and size of the hidden layers?
1. Which of the metaparameters were the most important and why?
1. Were some parameters only important for certain datasets? Which ones? Why?
1. What drove you to explore different parameters combinations in the tensorflow playground?
1. What were the limits of the data set? I.e. are there relationships that are inconclusive where a larger data set might have given you a better understanding?
1. What were the advantages and limits of the interface (visRseq)?

For all questions: please support your answers with figures/images.


### (2) App Development / Improvement
For this category, you can choose to develop a new R-App or modify and improve an existing R-App. This can specially be interesting for those who would like a coding challenge and/or are familiar with R.
A detailed tutorial on how to create apps for VisRseq framework can be found [here](https://github.com/hyounesy/bioc2016.visrseq).
The goal is to enhance the current analytical power of VisRseq to allow getting more or improved results. App(s) may add new computational functionality (e.g. new classification method) or new plots. It is still in the context of movie dataset, but the app should be designed such that it can be used with any tabular data.

  * The submission should include the ```.R``` and ```.json``` files for the new or improved app. 
  * App(s) should be functional in the current VisRseq version.
  * The submission should also include a ```.pdf``` or ```.md``` document explaining the app functionality and example output.
  * If your app is selected to be included in the VisRseq framework, you will be credited in the credits section of the webpage.



## Submitting
All submissions are due by ???. The results will be announced and discussed during the workshop session on ???.

Please refer to the [submission instructions](submissions/README.md) for details.

## Questions and Issues
Please use the [github issue page](https://github.com/hyounesy/cass2017_vis/issues) to ask questions or report issues.
