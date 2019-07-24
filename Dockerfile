FROM tesseractshadow/tesseract4re

RUN apt-get update && \
	apt-get -y upgrade && \
	apt-get -y install \
	python \
	python-pip
RUN mkdir -p /orc
COPY . /orc
WORKDIR /orc
RUN pip install -r requirements.txt
# sudo apt update
#sudo apt install tesseract-ocr
#sudo apt install libtesseract-dev
#sudo apt-get install tesseract-ocr-vie
# docker build -t web .
