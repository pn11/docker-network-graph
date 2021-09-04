FROM python:3

WORKDIR /usr/src/app

RUN apt update
RUN apt install -y graphviz

COPY Pipfile Pipfile.lock ./
RUN pip install pipenv
RUN pipenv install --system --deploy

COPY docker-net-graph.py docker-net-graph-flask.py ./

ENTRYPOINT ["python", "docker-net-graph-flask.py"]
