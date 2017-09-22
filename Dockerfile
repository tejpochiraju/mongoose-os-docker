FROM bitnami/minideb
LABEL maintainer="tej.pochiraju@gmail.com"
ENV LANG C.UTF-8
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
RUN apt-get update
RUN apt-get install -y curl
RUN curl -fsSL https://mongoose-os.com/downloads/mos/install.sh | /bin/bash
EXPOSE 1992
CMD ["/root/.mos/bin/mos", "--http-addr","0.0.0.0:1992","ui"]
