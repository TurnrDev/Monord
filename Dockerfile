FROM python:3

WORKDIR /usr/src/app

RUN apt-get update && apt-get -y install libgeos-c1v5 libgeos-3.7.1

COPY . .

RUN pip install --no-cache-dir -U pip
RUN pip install --no-cache-dir -r requirements.txt --use-feature=2020-resolver

CMD [ "./run.sh"]
