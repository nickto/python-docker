FROM nickto/arch:yay

USER yay
RUN yay --noconfirm -S python36

# Set up pip for python 3.6
USER root
# RUN pacman --noconfirm -S python-pip
# RUN python3.6 -m ensurepip --default-pip
# RUN python3.6 -m easy_install pip
# RUN python3.6 -m pip install --upgrade pip
#
# # Set python 3.6 as default python
# RUN rm /usr/sbin/python
# RUN ln -s /usr/bin/python3.6 /usr/sbin/python
