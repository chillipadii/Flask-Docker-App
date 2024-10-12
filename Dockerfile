FROM python:3.7-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_RUN_PORT=3000

EXPOSE 3000

CMD ["flask", "run", "--host=0.0.0.0"]
