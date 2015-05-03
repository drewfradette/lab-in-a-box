FROM ubuntu:14.04
MAINTAINER Drew Fradette <drew@drewfradette.ca>

EXPOSE 8888

VOLUME /notebooks

ADD requirements.txt /requirements.txt

RUN apt-get update && \
    apt-get install -y cmake python-pip python-dev libfreetype6-dev libxft-dev && \
    apt-get clean
RUN pip install -r /requirements.txt

WORKDIR /notebooks
ENTRYPOINT ipython notebook --no-browser --port 8888 --ip=*
