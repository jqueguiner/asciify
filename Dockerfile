FROM guignol95/ai_apis:latest

RUN mkdir -p /src

WORKDIR /src

ADD requirements.txt /src
ADD asciify.py /src
ADD app_utils.py /src
ADD app.py /src


RUN pip3 install -r requirements.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]
