# Ruby using secure-gateway in Bluemix sample

Secure gatewayを使ってリモートのMySQLに接続するサンプルアプリケーションです。


## Requirement

### App environment

* Ruby 2.2+


### Bluemix services

* Secure gateway Service（サービスがなければローカルのMySQLを使います）


## Development

### DBにデータを作成

```
CREATE DATABASE sgtest CHARACTER SET UTF8;
USE sgtest;
CREATE TABLE sample (id INTEGER PRIMARY KEY, data VARCHAR(255));
INSERT INTO sample (data) VALUES ("This is sample data");
```
