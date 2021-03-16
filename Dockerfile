FROM python:3.9-alpine3.13

RUN mkdir /app

WORKDIR /app

COPY ./ /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "/app/app.py"]
