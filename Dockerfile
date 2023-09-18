FROM python:alpine3.8
LABEL  maintainer='andriykolomiec218@gmail.com'

COPY . ./app

RUN apk update && apk upgrade -y
RUN pip install -r requirements.txt
RUN pyton manage.py migrate

CMD ["python", "manage.py", "runserver"]