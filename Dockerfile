FROM centos:7
USER root
RUN yum update -y
RUN mkdir -p /lightweight
WORKDIR /lightweight
COPY requirements.txt .
RUN pip install -r requirements.txt