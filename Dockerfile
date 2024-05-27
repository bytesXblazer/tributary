FROM python:3.11

COPY ./entrypoint.py .
COPY ./requirements.txt .

RUN python -m pip install -r requirements.txt

CMD exec gunicorn --bind 0.0.0.0:8000 entrypoint:app
