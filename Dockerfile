FROM continuumio/miniconda3
USER root

RUN mkdir -p /lightweight
WORKDIR /lightweight
COPY requirements-mine.txt .
RUN conda create -n lightweight python=3.7
SHELL ["conda", "run", "-n", "lightweight", "/bin/bash", "-c"]
RUN pip install -r requirements-mine.txt

#CMD python code/pretrain_DAMSM.py --cfg cfg/DAMSM/bird.yml --gpu 0