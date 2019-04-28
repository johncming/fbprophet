FROM continuumio/miniconda3

RUN conda update -n base -c defaults conda && \
   conda install -c conda-forge -y fbprophet