FROM python:3.10

# Set the working directory
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

RUN apt-get update -y && apt-get install -y --no-install-recommends build-essential gcc libsndfile1 ffmpeg

RUN pip install -r requirements.txt

RUN mkdir -p rvc_models/3752

RUN wget "https://up.michelecapicchioni.com/rvc/3752.pth" && mv 3752.pth rvc_models/3752/3752.pth

RUN chmod +x api.sh

CMD ["./api.sh"]

