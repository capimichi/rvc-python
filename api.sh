#!/bin/bash

# Read port from env
PORT=${PY_RVC_PORT:-8000}

# Start the server
python -m rvc_python api -p $PORT -l