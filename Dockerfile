FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

EXPOSE 5050

CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "5050"]

