FROM openjdk:11

WORKDIR /app

RUN mkdir "r"

RUN mkdir "ftg"

RUN touch "result.json"

RUN touch "filesToGroup.txt"

COPY ./target/angular-component-definer.jar /app

ENTRYPOINT eval "java -jar angular-component-definer.jar /app/r/result.json /app/ftg/filesToGroup.txt" 