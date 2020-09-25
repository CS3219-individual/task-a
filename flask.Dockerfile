FROM python:3.7
WORKDIR /app
COPY . .
RUN pip install -r requirements.txt

EXPOSE 42000

ENTRYPOINT ["python"]
CMD ["app.py"]