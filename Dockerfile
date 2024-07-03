FROM debian:bookworm

RUN sed -i 's/main/main contrib non-free/' /etc/apt/sources.list.d/debian.sources
RUN apt update
RUN apt install -y icc-profiles  ghostscript poppler-utils python3-tk texlive-extra-utils git
RUN cd /root && git clone https://github.com/wgnann/tratapdf.git
RUN cd /root/tratapdf && /root/tratapdf/setup.sh

WORKDIR /root/tratapdf
CMD ["/usr/bin/python3", "trata.py", "input.pdf"]
