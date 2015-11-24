FROM            ubuntu:latest
MAINTAINER      Bokum Guro <jiojiajiu@gmail.com>

RUN             apt-get update && \
                apt-get -y install build-essential cmake wget python2.7 python2.7-dev unzip && \
                apt-get -y clean \ pip install numpy

RUN             wget https://github.com/Itseez/opencv/archive/3.0.0-rc1.zip && unzip 3.0.0-rc1.zip
RUN             cd opencv-3.0.0-rc1 && \
                cmake . && make && make install && cd .. && rm -r opencv-3.0.0-rc1 3.0.0-rc1.zip
