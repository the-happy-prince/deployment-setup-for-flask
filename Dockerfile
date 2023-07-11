FROM python:3.9-slim-buster
WORKDIR /app
COPY . /app
RUN pip install -r requirements.txt
ENV FLASK_APP=app.py
ENTRYPOINT ["flask", "run", "-h", "0.0.0.0", "-p", "5015"]
