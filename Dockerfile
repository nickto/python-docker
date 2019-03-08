FROM nickto/arch:yay

# Otherwise mirrors are out of sync
RUN pacman --noconfirm -Su

USER yay
RUN yay --noconfirm -S python36
USER root
RUN ln -s /usr/bin/python3.6 /usr/bin/python

# Set up pip for python 3.6
WORKDIR /tmp
RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python /tmp/get-pip.py

WORKDIR /

