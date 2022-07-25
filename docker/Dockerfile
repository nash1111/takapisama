FROM python:3.8.13
WORKDIR /var/www/html
COPY ./pyproject.toml ./
RUN curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    . $HOME/.poetry/env && \
    poetry config virtualenvs.create false && \
    poetry config experimental.new-installer false && \
    poetry add numpy pandas fastapi uvicorn
    # && \
    #chmod a+x ./start.sh
#ENTRYPOINT [ "./start.sh" ]