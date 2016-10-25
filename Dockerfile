FROM ubuntu:16.04

EXPOSE 6080

RUN apt-get update && apt-get install -y \
          apt-utils \
          net-tools \
          git \
          python \
          python-numpy \
&& rm -rf /var/lib/apt/lists/*

COPY . /app/
WORKDIR /app

ENTRYPOINT [ "utils/launch.sh" ]
