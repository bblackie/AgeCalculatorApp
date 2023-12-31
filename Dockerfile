#Deriving the latest base image
FROM python:latest

#Labels as key value pair
LABEL Maintainer="clone278@gmail.com"

# Any working directory can be chosen as per choice like '/' or '/home' etc
# i have chosen /usr/app/src
WORKDIR /usr/app/src

#to COPY the remote file at working directory in container
COPY main.py ./
# Now the structure looks like this '/usr/app/src/test.py'

CMD [ "./main.py"]
ENTRYPOINT ["python"]