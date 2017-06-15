FROM nginx

RUN apt-get update
COPY ./scripts/my_scriptsecu.sh /usr/local/bin/my_scriptsecu.sh
RUN chmod +x /usr/local/bin/my_scriptsecu.sh
RUN ls -la /usr/local/bin
RUN /usr/local/bin/my_scriptsecu.sh


COPY ./scripts/my_cron.sh /usr/local/bin/my_cron.sh
RUN chmod +x /usr/local/bin/my_cron.sh
RUN ls -la /usr/local/bin
RUN /usr/local/bin/my_cron.sh

USER nginx