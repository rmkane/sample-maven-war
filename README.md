# Sample Maven WAR

Example of a WAR that serves JSP content.

## Server

### IntelliJ

[Tomcat server setup](https://mkyong.com/intellij/intellij-idea-run-debug-web-application-on-tomcat/)

### VS Code

Install the Red Hat "Community Server Connectors" extension

## Hot reload

For incremental development builds:

```shell
mvn clean compile war:exploded -DskipTests
```
