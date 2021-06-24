FROM python:3
LABEL AUTHOR="Jason Wraxall <wjase@yahoo.com.au>"

RUN apt install \
      git \
      && pip install cookiecutter && \
      rm -rf /var/cache/apk/*

RUN mkdir -p /.cookiecutters
RUN mkdir -p /.git

COPY ./cookie_and_chown.sh /scripts/cookie_and_chown.sh
RUN chmod +x /scripts/cookie_and_chown.sh


ENTRYPOINT [ "/scripts/cookie_and_chown.sh" ]