FROM python:3.8
# COPY /service/requirements.txt /app/requirements.txt
RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get install -y ffmpeg
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
COPY . /app
WORKDIR /app
RUN mkdir __logger
# set display port to avoid crash
ENV DISPLAY=:99
RUN pip install --upgrade pip
CMD ["python", "-um", "video_transcription"]
