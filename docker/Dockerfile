# Use Caffe2 image as parent image
#FROM caffe2ai/caffe2:c2v0.8.1.cuda8.cudnn7.ubuntu16.04
FROM caffe2/caffe2:snapshot-py2-cuda9.0-cudnn7-ubuntu16.04

RUN mv /usr/local/caffe2 /usr/local/caffe2_build
ENV Caffe2_DIR /usr/local/caffe2_build

ENV PYTHONPATH /usr/local/caffe2_build:${PYTHONPATH}
ENV LD_LIBRARY_PATH /usr/local/caffe2_build/lib:${LD_LIBRARY_PATH}

# Clone the Detectron repository
#RUN git clone https://github.com/facebookresearch/detectron /detectron

# Install Python dependencies
#RUN pip install -r /detectron/requirements.txt
RUN pip install --upgrade pip
RUN pip install numpy
RUN pip install pyyaml==3.12
RUN pip install matplotlib==2.1.0
RUN pip install opencv-python==4.1.0.25
RUN pip install setuptools
RUN pip install Cython
RUN pip install mock
RUN pip install scipy
RUN pip install six
RUN pip install future
RUN pip install protobuf


# Install the COCO API
RUN git clone https://github.com/cocodataset/cocoapi.git /cocoapi
#WORKDIR /cocoapi/PythonAPI
RUN cd /cocoapi/PythonAPI && make install

# Go to Detectron root
WORKDIR /home/detectron

# Set up Python modules
#RUN make

# [Optional] Build custom ops
#RUN make ops
