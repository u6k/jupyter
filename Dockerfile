FROM jupyter/datascience-notebook:python-3.8.8
LABEL maintainer="u6k.apps@gmail.com"

USER root

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y git && \
    apt-get clean && \
    pip install -U \
        # https://github.com/ryantam626/jupyterlab_code_formatter
        jupyterlab_code_formatter autopep8 isort black yapf \
        # https://github.com/jupyterlab/jupyterlab-git
        jupyterlab-git
