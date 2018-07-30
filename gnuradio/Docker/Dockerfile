FROM ubuntu:16.04

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install -qy \
         libasound2 \
         libboost-date-time1.58.0 \
         libboost-filesystem1.58.0 \
         libboost-program-options1.58.0 \
         libboost-thread1.58.0 \
         libcomedi0 \
         libfftw3-bin \
         libgsl2 \
         libjack-jackd2-0 \
         liblog4cpp5v5 \
         libportaudio2 \
         libqwt6abi1 \
         libsdl-image1.2 \
         libuhd003 \
         libusb-1.0-0 \
         libzmq5 \
         pkg-config \
         --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive \
       apt-get install -qy \
         python-cheetah \
         python-dev \
         python-gtk2 \
         python-lxml \
         python-numpy \
         python-opengl \
         python-qt4 \
         python-wxgtk3.0 \
         python-zmq \
         --no-install-recommends \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update -q

RUN mv /sbin/sysctl /sbin/sysctl.orig \
    && ln -sf /bin/true /sbin/sysctl \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       --no-install-recommends \
       build-essential \
       ccache \
       cmake \
       libboost-date-time-dev \
       libboost-dev \
       libboost-filesystem-dev \
       libboost-program-options-dev \
       libboost-regex-dev \
       libboost-system-dev \
       libboost-test-dev \
       libboost-thread-dev \
       libcomedi-dev \
       libcppunit-dev \
       libfftw3-dev \
       libgsl0-dev \
       libqt4-dev \
       libqwt-dev \
       libqwt5-qt4 \
       libsdl1.2-dev \
       libuhd-dev \
       libusb-1.0-0-dev \
       libzmq3-dev \
       portaudio19-dev \
       pyqt4-dev-tools \
       python-cheetah \
       swig \
    && rm -f /sbin/sysctl \
    && mv /sbin/sysctl.orig /sbin/sysctl

RUN rm -rf /var/lib/apt/*

RUN apt-get update -q \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y \
       --no-install-recommends \
       doxygen-latex \
       python-pygraphviz \
       python-sphinx \
       gnuradio \
       python-dev \
       python-setuptools \
       python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install jupyter matplotlib

EXPOSE 8008
EXPOSE 8080
EXPOSE 8888

WORKDIR workspace
