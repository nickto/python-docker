FROM nickto/arch:base-devel

USER root

# Install Python
RUN pacman -Su 
RUN pacman --noconfirm -S python python-pip
RUN pip install --upgrade pip

