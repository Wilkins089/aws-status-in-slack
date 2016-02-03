
FROM gliderlabs/alpine:3.2

MAINTAINER Allan Costa "allan@cloudwalk.io"

RUN apk --update add py-pip
RUN pip install awscli

COPY . /src/aws-status-slack

WORKDIR /src/aws-status-slack

RUN pip install -r requirements.txt

ENTRYPOINT ["/src/aws-status-slack/aws_status_slack.py"]
