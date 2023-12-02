FROM python:3.11.5-slim-bookworm

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt
RUN pip install flask
RUN pip install requests
RUN pip install numpy
RUN pip install scikit-learn
RUN pip install pickle-mixin
RUN pip install pandas
RUN pip install matplotlib
RUN pip install seaborn
RUN pip install ppscore

COPY . .

EXPOSE 5000

CMD flask --app main run --host 0.0.0.0:5000
