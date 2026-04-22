#!/bin/bash

export JAVA_HOME=/opt/25-oracle
export M2_HOME=/opt/apache-maven-3.9.15

if [ -d "$JAVA_HOME" ] && [ -d "$M2_HOME" ]; then
    export PATH=$M2_HOME/bin:$JAVA_HOME/bin:$PATH

    echo "------------------------------------------------"
    echo "✅ ENVIRONMENT SUCCEED: Java 25 & Maven 3.9.15"
    echo "------------------------------------------------"

    mvn -version | grep "Apache Maven"
    java -version 2>&1 | head -n 1

    echo "------------------------------------------------"
    echo "Ready for high-performance development."
else
    echo "------------------------------------------------"
    echo "❌ ERROR: Environment setup failed."
    echo "Please check if /opt/25-oracle and /opt/apache-maven-3.9.15 exist."
    echo "------------------------------------------------"
fi