FROM continuumio/miniconda3

RUN conda update -n base -c defaults conda && \
   conda install -c conda-forge -y fbprophet

RUN pip install flask influxdb

EXPOSE 5000

CMD ["flask", "run", "--host=0.0.0.0"]