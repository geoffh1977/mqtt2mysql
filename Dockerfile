# Build Application Container
FROM nexus3.auiag.corp:18000/alpine:3

# Install Software Packages
# hadolint ignore=DL3018
RUN apk add -U --no-cache python3 && \
    addgroup -g 1000 app && \
    adduser -D -u 1000 -G app app && \
    mkdir /app

# Install Application
COPY app/* /app/
WORKDIR /app
RUN chown -R app:app /app && \
    pip3 install -r requirements.txt --upgrade pip

# Image Settings
USER app
ENTRYPOINT ["python3"]
CMD ["mqtt2mysql.py"]
