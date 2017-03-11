FROM alpine:3.4

RUN apk update && apk add ca-certificates && update-ca-certificates
RUN apk add wget

WORKDIR /root

RUN wget https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
RUN cp ecs-cli-linux-amd64-latest /usr/local/bin/ecs-cli
RUN chmod +x /usr/local/bin/ecs-cli

ENTRYPOINT [ "/usr/local/bin/ecs-cli" ]

