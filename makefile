db_start:
	docker run --name mysql -p 3306:3306 -e MYSQL_DATABASE=artdb -e MYSQL_ROOT_PASSWORD=root -d mysql:8.1.0

db_stop:
	docker stop mysql

db_remove:
	docker rm mysql