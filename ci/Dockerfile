FROM eclipse-temurin:17.0.3_7-jdk-jammy

RUN apt-get update --yes && \
    apt-get install --yes curl git mysql-client bash jq

WORKDIR /opt/ci

RUN curl -sfL https://raw.githubusercontent.com/dwijnand/sbt-extras/2e3aa65bf7661/sbt -o sbt
RUN sha256sum sbt | grep a19e1aae2dec66d8037d9c06b63c6986f9235b171ae1417d195b7367a6e798c4 || ( echo "invalid checksum for sbt binary" > /dev/stderr ;  exit 1 )
RUN chmod +x sbt

ENV PATH="/opt/ci:${PATH}"
