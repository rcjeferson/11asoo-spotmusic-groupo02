FROM python:3

RUN adduser --system --home /home/app app
USER app

WORKDIR /home/app

ENV PATH="/home/app/.local/bin:${PATH}"

COPY app.py db.py requirements.txt /home/app/

RUN pip install --user --trusted-host pypi.python.org -r requirements.txt

CMD ["gunicorn", "-b", "0.0.0.0:8080", "app:app"]