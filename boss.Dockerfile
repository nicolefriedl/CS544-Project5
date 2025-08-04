# boss.Dockerfile
FROM p5-base
ENV SPARK_HOME=/spark-3.5.5-bin-hadoop3
ENV PATH="${SPARK_HOME}/bin:${PATH}"
EXPOSE 7077 8080
CMD ["bash", "-c", "/spark-3.5.5-bin-hadoop3/bin/spark-class org.apache.spark.deploy.master.Master --host 0.0.0.0"]







