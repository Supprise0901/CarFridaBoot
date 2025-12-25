#!/usr/bin/env sh

##############################################################################
##
##  Gradle start up script for POSIX
##
##############################################################################

APP_NAME="Gradle"
APP_BASE_NAME=`basename "$0"`

# 必须先定义 APP_HOME
APP_HOME=`cd "$(dirname "$0")"; pwd -P`

# JVM 参数：不要写引号
DEFAULT_JVM_OPTS=-Xmx64m

warn () {
    echo "$*"
}

die () {
    echo
    echo "$*"
    echo
    exit 1
}

CLASSPATH="$APP_HOME/gradle/wrapper/gradle-wrapper.jar"

if [ ! -f "$CLASSPATH" ]; then
    die "ERROR: gradle-wrapper.jar not found in $CLASSPATH"
fi

JAVA_EXEC="$JAVA_HOME/bin/java"
[ -x "$JAVA_EXEC" ] || JAVA_EXEC="java"

exec "$JAVA_EXEC" $DEFAULT_JVM_OPTS \
    -classpath "$CLASSPATH" \
    org.gradle.wrapper.GradleWrapperMain "$@"
