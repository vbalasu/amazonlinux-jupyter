FROM amazonlinux:latest
RUN yum install -y python3 jupyter; pip3 install jupyter
RUN pip3 install bash_kernel; python3 -m bash_kernel.install
WORKDIR /root
CMD jupyter notebook --ip=0.0.0.0 --port=18888 --allow-root
