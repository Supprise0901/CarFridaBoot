@echo off
setlocal

set DIRNAME=%~dp0
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%

set DEFAULT_JVM_OPTS="-Xmx64m" "-Xms64m"

if exist "%JAVA_HOME%\bin\java.exe" (
    set JAVA_EXE="%JAVA_HOME%\bin\java.exe"
) else (
    set JAVA_EXE=java
)

"%JAVA_EXE%" %DEFAULT_JVM_OPTS% -classpath "%APP_HOME%\gradle\wrapper\gradle-wrapper.jar" org.gradle.wrapper.GradleWrapperMain %*

endlocal
