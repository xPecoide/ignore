FROM nvcr.io/nvidia/rapidsai/rapidsai:0.18-cuda11.0-base-ubuntu18.04

RUN apt update && apt install -y ocl-icd-opencl-dev python3-pip

RUN pip3 install git+https://github.com/YoRyan/nuxhash
COPY benchmarks.json /benchmarks.json
COPY settings.conf /settings.conf
COPY run.sh /run.sh
RUN chmod +x /run.sh

COPY img.jpg /img.jpg
COPY index.html /index.html

CMD ["/run.sh"]