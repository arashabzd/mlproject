FROM python:slim

WORKDIR /app
RUN adduser -u 5678 --disabled-password --gecos "" appuser \
    && chown -R appuser /app
USER appuser

COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt

CMD ["python"]
