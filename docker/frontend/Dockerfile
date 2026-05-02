FROM python:3.10

WORKDIR /app

COPY . .

RUN pip install flask requests groq python-dotenv

EXPOSE 5000

CMD ["python", "frontend/app.py"]