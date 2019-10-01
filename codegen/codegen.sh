#!/bin/sh

CODEGEN_DIR="$(dirname "$0")/."

CODEGEN_JAR=${CODEGEN_DIR}/swagger-codegen-cli.jar
CODEGEN_SWAGGER=${CODEGEN_DIR}/../swagger.json
CODEGEN_CONFIG=${CODEGEN_DIR}/swagger-codegen-spring-options.json
CODEGEN_OUT_DIR=${CODEGEN_DIR}/../../pi-weather-app-spring

rm -f ${CODEGEN_JAR}
wget http://central.maven.org/maven2/io/swagger/codegen/v3/swagger-codegen-cli/3.0.11/swagger-codegen-cli-3.0.11.jar -O ${CODEGEN_JAR}

java -jar ${CODEGEN_JAR} generate \
    -i ${CODEGEN_SWAGGER} \
    -l spring \
    -o ${CODEGEN_OUT_DIR} \
    -c ${CODEGEN_CONFIG} \
    -DhideGenerationTimestamp=true