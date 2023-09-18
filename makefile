db_start:
	docker run --name mysql -p 3306:3306 -e MYSQL_DATABASE=artdb -e MYSQL_ROOT_PASSWORD=root -d mysql:8.1.0

db_stop:
	docker stop mysql

db_remove:
	docker rm mysql

app_init:
	npm init -y

app_install_prisma:
	npm install prisma --save-dev

app_init_prisma_cli:
	npx prisma

app_init_prisma:
	npx prisma init

app_prisma_migration:
	npx prisma migrate dev --name init

app_install_prisma_cli:
	npm install @prisma/client

app_create_account:
	node index_create_account.js

app_get_account:
	node index_get_account.js

app_get_accounts:
	node index_get_accounts.js

app_update_account:
	node index_update_account.js

app_delete_account:
	node index_delete_account.js