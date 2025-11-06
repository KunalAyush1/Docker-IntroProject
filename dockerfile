FROM python:3.12.7-slim
#making a directory inside our container named as app
WORKDIR /app
#copying everything(.) from our current directory to app directory
COPY . /app

#installing any needed packages mentioned in requirements.txt
RUN pip install --no-cache-dir -r- requirements.txt

#making port 5000 available to world outside this container
EXPOSE 5000

#defining environment variable...
ENV FLASK_APP=app.py
#everytime we use command FLASK_APP the environment will start

#run the flask app
CMD ["flask", "run", "--host=0.0.0.0"]