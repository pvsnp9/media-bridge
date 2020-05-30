FROM vidyo/mediabridge


# COPY reuired files
COPY ./app.py ./home/webapp/
COPY ./config ./home/webapp/

# ipdate and install python and required libraray
RUN apt-get update 
RUN apt-get install -y python python-webpy

# create directory to store temporary video file
RUN mkdir ./home/webapp/video

# expose port 
EXPOSE 5000

#run the script
CMD python ./home/webapp/app.py 5000

