from debian:jessie

#Maintener jerivas@uaq.edu.mx


RUN apt-get update && \
    apt-get install -y aptitude && \
    aptitude install -y python3-uno 

RUN \
    aptitude install -y python3-pip openjdk-7-jre \
        unoconv \
        xfonts-base xfonts-75dpi xfonts-100dpi && \
    rm -r /var/lib/apt/lists/* && \
    pip3 install pyoo 

RUN mkdir /output

VOLUME /output

#RUN groupadd -r openoffice && useradd -r -g openoffice openoffice
#USER openoffice
#ENV uid 1000
#ENV gid 1000


ENTRYPOINT ["/output/start_openoffice_headless.sh"] 

