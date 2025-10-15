FROM python:alpine

WORKDIR /app

COPY src/requirements.txt .

RUN pip install -r requirements.txt

COPY src/server.py .

EXPOSE 6000

CMD ["python", "server.py"]
