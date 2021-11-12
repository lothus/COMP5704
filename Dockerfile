# hash:sha256:10642e83028fafd9d360cb596d6261fd11be0f741047fcbec59a84fa0e119725
FROM registry.codeocean.com/codeocean/miniconda3:4.7.10-python3.7-ubuntu18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN conda install -y \
        keras==2.3.1 \
        tensorflow==1.14.0 \
    && conda clean -ya

RUN pip install -U --no-cache-dir \
    numpy==1.20.2

RUN mkdir /opt/code

RUN cd /opt/code