# vbalasu/amazonlinux-jupyter
Docker container running Amazon linux and Jupyter

It has a bash kernel preinstalled

```
Dockerfile
--------------
FROM amazonlinux:latest
RUN yum install -y python3 jupyter; pip3 install jupyter
RUN pip3 install bash_kernel; python3 -m bash_kernel.install
WORKDIR /root
CMD jupyter notebook --ip=0.0.0.0 --port=18888 --allow-root


build.sh
-----------
docker build -t vbalasu/amazonlinux-jupyter .

run.sh
---------
docker run -d --rm -p 18888:18888 vbalasu/amazonlinux-jupyter
echo "To view the Jupyter URL, run the following command: docker logs <CONTAINERID>"
```
