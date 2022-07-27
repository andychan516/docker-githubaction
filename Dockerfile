FROM ubuntu
RUN apt-get update
RUN apt-get update && apt-get install python
ADD hello.py /home/hello.py
CMD ["/home/hello.py"]
ENTRYPOINT ["python"]
