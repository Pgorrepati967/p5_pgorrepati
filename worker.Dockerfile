FROM p5-base

ENV SPARK_HOME=/spark-4.1.1-bin-hadoop3
ENV PATH="${PATH}:${SPARK_HOME}/bin:${SPARK_HOME}/sbin"

CMD ["/bin/sh", "-c", "$SPARK_HOME/sbin/start-worker.sh spark://p5-spark-boss-1:7077 && tail -f /dev/null"]
