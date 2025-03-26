FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN holy create-db
RUN holy populate-db
RUN holy add-user -u admin -p admin
EXPOSE 5000
CMD ["holy", "run"]
