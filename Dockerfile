FROM archlinux:latest
RUN pacman -Syu --noconfirm
RUN pacman -S python python-pip gcc --noconfirm
RUN mkdir /work
RUN mkdir /work/src
COPY requirements.txt /work/requirements.txt
RUN pip install -r /work/requirements.txt
WORKDIR /work/src/
CMD ["jupyter", "notebook"]
