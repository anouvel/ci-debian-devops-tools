FROM        debian:7
MAINTAINER  adrien.nouvel@d2-si.eu

RUN         apt-get -y update && apt-get -y upgrade && apt-get -y install \
              git   \
              curl

RUN         git clone https://github.com/kamatama41/tfenv.git /opt/tfenv

ENV         LC_ALL=en_US.UTF-8
ENV         PATH="/opt/tfenv/bin:${PATH}"
