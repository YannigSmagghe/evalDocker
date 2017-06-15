FROM nginx

RUN apt-get update

COPY ../scripts/my_scriptsecu.sh /usr/local/bin/my_scriptsecu
RUN chmod +x /usr/local/bin/my_scriptsecu
RUN ./my_scriptsecu.sh


COPY ../scripts/my_cron.sh /usr/local/bin/my_cron
RUN chmod +x /usr/local/bin/my_cron
RUN ./my_cron.sh

