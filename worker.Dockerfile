# worker.Dockerfile
FROM p5-base
ENV SPARK_HOME=/spark-3.5.5-bin-hadoop3
ENV PATH="${SPARK_HOME}/bin:${PATH}"
EXPOSE 8081
CMD ["bash", "-c", "/spark-3.5.5-bin-hadoop3/sbin/start-worker.sh spark://boss:7077 -c 2 -m 2g && sleep infinity"]

