apt-get install -y protobuf-compiler python3-pil python3-lxml python3-tk
python3 -m pip install Cython contextlib2 jupyter matplotlib
python3 -m pip install tensorflow

apt-get install docker.io -y
systemctl start docker
systemctl enable docker
docker --version

docker container run -it --name tensorflow -p 8888:8888 tensorflow/tensorflow:nightly-py3-jupyter

docker run -it -p 8888:8888 tensorflow/tensorflow:latest-py3-jupyter
