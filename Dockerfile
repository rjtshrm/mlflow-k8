From ubuntu:20.04

RUN  apt-get update  && apt install python3-pip libpq-dev -y

WORKDIR /home
COPY . .

RUN pip3 install -r requirements.txt

ENTRYPOINT ["mlflow", "server"]
