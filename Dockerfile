FROM ubuntu
RUN apt-get update
RUN sed -i 's#http://archive.ubuntu.com/#http://mirrors.tuna.tsinghua.edu.cn/#' /etc/apt/sources.list;
RUN apt-get update && apt-get install python
ADD hello.py /home/hello.py
CMD ["/home/hello.py"]
ENTRYPOINT ["python"]
