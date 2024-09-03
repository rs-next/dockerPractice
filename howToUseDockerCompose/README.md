## 도커 컴포즈 백 그라운드 실행방법

```sh
docker-compose up -d
```

## sql 더미데이터 테스트

```sql
use rootdb;

create table person(
  id int primary key,
  name varchar(200)
);

insert into person values(1,"name");
select * from person;
```
