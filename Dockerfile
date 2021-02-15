FROM bde2020/spark-worker:2.4.3-hadoop2.7

COPY spark_cleanup /etc/periodic/hourly/
COPY entrypoint.sh /
RUN chmod +x /etc/periodic/hourly/spark_cleanup
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/bin/bash", "/entrypoint.sh"]
CMD ["/bin/bash", "/worker.sh"]
