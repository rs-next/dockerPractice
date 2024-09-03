## OS 호스트 시스템 볼륨 옵션으로 실행하는 법

```sh
docker run -d -v /Users/anseunghyeon/Documents/personal/docker_lab/howToUseMysqlDockerFile/mysql-volume:/var/lib/mysql -p 3306:3306 --name mysql-container mysql-images
```

## 이름을 지정하여 볼륨을 사용해 실행하는 법

```sh
docker run -d -v volume-name:/var/lib/mysql -p 3306:3306 --name mysql-container mysql-images
```

## MYSQL 도커파일 생성방법

```txt

FROM mysql

#환경 변수 설정
ENV MYSQL_USER=hyun
ENV MYSQL_PASSWORD=1234
ENV MYSQL_ROOT_PASSWORD=root1234
ENV MYSQL_DATABASE=hyundb

#매번 넣는게 귀찮아서..? 이거 꼭넣어야한대
#--character-set-server=utf8mb4 : 기본 문자 세트 utf8
#CMD는 컨테이너가 실행될 때 MySQL 서버에 전달할 추가적인 명령줄 인자를 정의
CMD [ "--character-set-server=utf8mb4","--collation-server=utf8mb4_unicode_ci" ]

```

## UTF 8 설정 확인

```sh
SHOW VARIABLES LIKE 'character_set_%';
```
