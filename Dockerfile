FROM ubuntu:18.04

RUN apt-get update; \
apt-get install -y wget python libquadmath0 bc dc less libgl1-mesa-glx;

RUN wget https://fsl.fmrib.ox.ac.uk/fsldownloads/fslinstaller.py
RUN chmod a+x fslinstaller.py
RUN ./fslinstaller.py -q -d /usr/local/fsl
ENV FSLDIR=/usr/local/fsl/
ENV PATH=$PATH:$FSLDIR/bin
RUN echo ". ${FSLDIR}/etc/fslconf/fsl.sh" >> ~/.bashrc