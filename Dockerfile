FROM dockerfile/java
MAINTAINER Matt Stine mstine@gopivotal.com

RUN useradd appuser -m -s /bin/bash

ADD build/libs/workspace.jar /home/appuser/workspace.jar

RUN chown appuser:appuser /home/appuser/workspace.jar

ENTRYPOINT ["java","-jar","/home/appuser/workspace.jar"]
USER appuser