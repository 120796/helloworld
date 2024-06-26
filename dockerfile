FROM python:3.9

WORKDIR /app

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY . .

# Expose port 8080
EXPOSE 8080

CMD ["python", "app.py"]
