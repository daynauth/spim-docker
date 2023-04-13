FROM ubuntu:latest

RUN apt-get update && apt-get install build-essential -y

COPY spim-keepstats /spim
WORKDIR /spim/spim
RUN make install
