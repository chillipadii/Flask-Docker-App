FROM python:3.9-slim

WORKDIR /app

# Install necessary certificates
RUN apt-get update && apt-get install -y ca-certificates

COPY requirements.txt .

RUN pip install --trusted-host pypi.org --trusted-host files.pythonhosted.org --no-cache-dir -r requirements.txt


COPY . .

ENV FLASK_RUN_PORT=3000

EXPOSE 3000

CMD ["flask", "run", "--host=0.0.0.0", "--port=3000"]
