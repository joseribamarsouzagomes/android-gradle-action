FROM runmymind/docker-android-sdk:alpine-standalone

LABEL "com.github.actions.name"="Gradle Android"
LABEL "com.github.actions.description"="Run Android Gradle tasks"
LABEL "com.github.actions.icon"="play"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/joseribamarsouzagomes/gradle-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Ribamar <jrsouzagomes@gmail.com>"

ADD entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
