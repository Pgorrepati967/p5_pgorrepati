FROM p5-base

ENV SPARK_HOME=/spark-4.1.1-bin-hadoop3
ENV PATH="${PATH}:${SPARK_HOME}/bin:${SPARK_HOME}/sbin"

CMD ["/bin/sh", "-c", "$SPARK_HOME/sbin/start-master.sh && tail -f /dev/null"]
