# Set the path to the Spark installation directory
SPARK_HOME=/spark/spark-3.5.1-bin-hadoop3

# Set the path to your Python Spark application script
PY_SCRIPT=./spark.py

# Set the master URL for your Spark cluster (e.g., "spark://your-master-node:7077" for a standalone cluster)
MASTER_URL=spark://n3002:7077

# Set the number of cores per executor
CORES_PER_EXECUTOR=5

# Set the amount of memory per executor
EXECUTOR_MEMORY=25g

# Set the driver memory
DRIVER_MEMORY=2g

# Additional Spark configuration options
# For example, you can set additional Spark properties here
# SPARK_CONF="--conf spark.some.property=value"

# Verbose mode to print detailed information during execution
VERBOSE_MODE="--verbose"

# Submit the Spark application
${SPARK_HOME}/bin/spark-submit \
  --master ${MASTER_URL} \
  --deploy-mode client \
  --executor-cores ${CORES_PER_EXECUTOR} \
  --executor-memory ${EXECUTOR_MEMORY} \
  --driver-memory ${DRIVER_MEMORY} \
  ${VERBOSE_MODE} \
  ${SPARK_CONF} \
  ${PY_SCRIPT}
