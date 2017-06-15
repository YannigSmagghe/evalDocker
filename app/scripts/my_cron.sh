#!/bin/bash

crontab -e
crontab -l
0 3 * * * logwatch --detail low --format text > /var/cache/logwatch/logwatch.log
0 4 * * * /usr/bin/rkhunter --cronjob --update -quiet
15 4 * * * /usr/bin/chkrootkit > /dev/null


