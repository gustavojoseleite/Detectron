#RUN

docker run -it --gpus all -e DISPLAY=$DISPLAY -v "$(pwd)/..:/home/detectron" --net=host --privileged  gl/detectron /bin/bash