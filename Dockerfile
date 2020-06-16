FROM zj1244/spring-boot:1
#change apk origin aliyun
RUN apk add --no-cache tzdata
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN mkdir -p /app && chmod 775 -R /app
COPY target/spring* /app/

CMD java \
    -jar /app/*
