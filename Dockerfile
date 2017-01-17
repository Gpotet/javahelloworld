FROM openjdk:alpine
ENV FOO bar
WORKDIR /home/root/javahelloworld
COPY src/ src/
RUN mkdir bin
RUN javac -d bin src/*.java
ENTRYPOINT ["java","-cp", "bin", "HelloWorld"]
