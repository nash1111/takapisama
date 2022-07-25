FROM python:3.8.13
WORKDIR /var/www/html
COPY ./pyproject.toml ./
COPY ./src/start.sh /tmp
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    . $HOME/.poetry/env && \
    poetry config virtualenvs.create false && \
    poetry config experimental.new-installer false && \
    poetry install && \
    chmod a+x /tmp/start.sh
    # && \
    # && \
    #poetry run uvicorn main:main --reload --host 0.0.0.0 --port 9004
    #poetry add numpy pandas fastapi uvicorn
    # && \
    #chmod a+x ./start.sh
ENTRYPOINT [ "/tmp/start.sh" ]