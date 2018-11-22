FROM nickto/arch:base-devel

USER root

# Install Python
RUN pacman --noconfirm -S python python-pip
RUN pip install --upgrade pip

