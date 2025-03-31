FROM python:3.10-slim AS build
RUN apt-get update && \
    apt-get install --no-install-suggests --no-install-recommends --yes gcc libpython3-dev && \
    python3 -m venv /venv && \
    /venv/bin/pip install --upgrade pip setuptools wheel

# Build the virtualenv as a separate step
FROM build AS build-venv
COPY requirements.txt /requirements.txt
RUN /venv/bin/pip install --disable-pip-version-check -r /requirements.txt



# Use slim image for final stage
FROM python:3.10-slim
WORKDIR /app
COPY chaiheadq /app
COPY --from=build-venv /venv /venv
# COPY . /app
# aws codepipline testing 
# Use the absolute path to python
ENTRYPOINT ["/venv/bin/python3"]
CMD ["manage.py", "runserver", "0.0.0.0:4000"]