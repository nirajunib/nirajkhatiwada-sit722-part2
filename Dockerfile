FROM python:3.11-slim

WORKDIR /app

COPY ./book_catalog/requirements.txt /app/
RUN pip install --upgrade pip && pip install -r requirements.txt

COPY ./book_catalog/ /app/

EXPOSE 80

ENV DATABASE_URL=your_database_connection_string

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
