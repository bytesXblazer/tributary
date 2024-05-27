FROM python:3.11

COPY ./entrypoint.py .
COPY ./requirements.txt .

RUN python -m pip install -r requirements.txt

CMD exec gunicorn entrypoint:app
