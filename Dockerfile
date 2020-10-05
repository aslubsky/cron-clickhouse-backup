FROM alexakulov/clickhouse-backup:master

ADD crontab.txt /crontab.txt
COPY entry.sh /entry.sh
RUN chmod 755 /entry.sh
RUN /usr/bin/crontab /crontab.txt

ENTRYPOINT ["/entry.sh"]
CMD ["/entry.sh"]
