FROM ubuntu

RUN apt-get update
# -y 용량 물어보는거 그냥 y로 넘기는거
RUN apt-get install -y nginx

WORKDIR /var/www/html

COPY ./webapp/index.html ./index.nginx-debian.html

#daemon을 background 말고 foregrounD로 실행
ENTRYPOINT [ "nginx", "-g", "daemon off;" ]

