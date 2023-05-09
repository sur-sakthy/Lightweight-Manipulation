FROM continuumio/miniconda3
USER root

RUN conda create -n lightweight python=3.7
RUN echo "source activate lightweight" > ~/.bashrc
RUN pip install pandas numpy scikit-image scikit-learn nltk matplotlib pyyaml easydict
RUN pip install torch==1.12.0 torchvision==0.13.0
