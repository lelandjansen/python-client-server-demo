FROM ubuntu:xenial
RUN apt-get update && apt-get install -y \
  python3-pip \
  python3-dev \
  build-essential
RUN pip3 install --upgrade pip
COPY . /client
WORKDIR /client
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app/client.py"]
