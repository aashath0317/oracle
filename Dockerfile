FROM debian:latest

RUN apt-get update
RUN apt-get upgrade -y
COPY requirements.txt .

RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

CMD ["python3", "start.py"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t kasroudra/camhacker:latest", "sudo docker run --rm -it kasroudra/pyphisher:latest"

## "sudo docker pull kasroudra/camhacker", "sudo docker run --rm -it kasroudra/camhacker"
