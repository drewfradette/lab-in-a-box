FROM ubuntu:14.04
MAINTAINER Drew Fradette <drew@drewfradette.ca>
EXPOSE 8888
VOLUME /notebooks

RUN apt-get update && \
    apt-get install -y cmake python3 python3-pip python-dev libfreetype6-dev libxft-dev && \
    apt-get clean

ADD requirements.txt /requirements.txt
RUN pip3 install -r /requirements.txt

WORKDIR /notebooks
ENTRYPOINT ipython3 notebook --no-browser --port 8888 --ip=*
