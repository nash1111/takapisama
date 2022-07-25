#!/bin/sh
. $HOME/.poetry/env && poetry run uvicorn main:app --reload --host 0.0.0.0 --port 9004
exec "$@"