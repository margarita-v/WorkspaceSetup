g#!/bin/bash

# Setup environment variables
ENVIRONMENT_VARIABLES="JAVA_HOME=/usr/bin/java \
    GRADLE_HOME=/opt/gradle/gradle-5.0/bin \
    ANDROID_HOME=~/Android/Sdk \
    EMULATOR_HOME=\$ANDROID_HOME/emulator \
    EMULATOR_TOOLS_HOME=\$ANDROID_HOME/tools \
    AVDMANAGER_HOME=\$EMULATOR_TOOLS_HOME/bin \
    PATH=\$PATH:\$JAVA_HOME:\$GRADLE_HOME:\$EMULATOR_HOME:\$EMULATOR_TOOLS_HOME:\$AVDMANAGER_HOME"

for variable in ${ENVIRONMENT_VARIABLES}; do
    echo export $variable >> ~/.zshrc
done