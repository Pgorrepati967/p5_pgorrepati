FROM p5-base

ENV JAVA_HOME=/usr/lib/jvm/java-17-openjdk-amd64
ENV PATH="${PATH}:/hadoop-3.4.3/bin:/spark-4.1.1-bin-hadoop3/bin"
ENV HADOOP_HOME=/hadoop-3.4.3
ENV SPARK_HOME=/spark-4.1.1-bin-hadoop3

CMD ["/bin/sh", "-c", "$SPARK_HOME/sbin/start-master.sh && tail -f /dev/null"]
