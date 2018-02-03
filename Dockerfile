FROM        debian:8
MAINTAINER  adrien.nouvel@d2-si.eu

RUN         apt-get -y update && apt-get -y upgrade && apt-get -y install \
              unzip \
              git   \
              curl

RUN         git clone https://github.com/kamatama41/tfenv.git /opt/tfenv

ENV         PATH="/opt/tfenv/bin:${PATH}"
