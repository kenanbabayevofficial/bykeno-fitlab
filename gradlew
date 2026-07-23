#!/usr/bin/env sh
set -e
GRADLE_VERSION=8.5
if [ ! -f gradle/wrapper/gradle-wrapper.jar ]; then
  echo "Downloading gradle-wrapper.jar..."
  mkdir -p gradle/wrapper
  curl -L -o gradle/wrapper/gradle-wrapper.jar https://github.com/gradle/gradle/raw/v8.5.0/gradle/wrapper/gradle-wrapper.jar
fi
exec java -jar gradle/wrapper/gradle-wrapper.jar "$@"
