FROM ubuntu:16.04

RUN apt-get update && apt-get install -y \
          apt-utils \
          net-tools \
          git \
          python \
          python-numpy \
&& rm -rf /var/lib/apt/lists/*

COPY . /app/
CMD [ "/app/utils/launch.sh" ]

EXPOSE 6080
