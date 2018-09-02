FROM nvcr.io/nvidia/tensorflow:18.08-py2
  
RUN pip install keras \
    && pip install jupyter \
    && pip install matplotlib

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive \
        apt-get install -qy \
        gnuradio \
        git \
        --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/qpt/list/*

EXPOSE 8008
EXPOSE 8080
EXPOSE 8888