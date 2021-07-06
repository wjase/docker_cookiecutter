FROM python:3
LABEL AUTHOR="Jason Wraxall <wjase@yahoo.com.au>"

RUN apt install \
      git \
      && pip install cookiecutter && \
      rm -rf /var/cache/apk/*

COPY ./run_as_user.sh /scripts/run_as_user.sh
RUN chmod +x /scripts/run_as_user.sh

ENTRYPOINT [ "/scripts/run_as_user.sh" ]