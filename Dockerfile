FROM dockerfile/java
MAINTAINER Matt Stine mstine@gopivotal.com

RUN useradd appuser -m -s /bin/bash

ADD ./build/libs/boot.jar /home/appuser/boot.jar

RUN chown appuser:appuser /home/appuser/boot.jar

ENTRYPOINT ["java","-jar","/home/appuser/boot.jar"]
USER appuser