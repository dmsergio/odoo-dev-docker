# Shortcuts
fast-up: build upd

fast-run: upd logs-odoo


# Manage Docker services
build:
	docker compose build

build-no-cache:
	docker compose build --no-cache

up:
	docker compose up

upd:
	docker compose up -d

ps:
	docker compose ps

down:
	docker compose down

down-orphans:
	docker compose down --remove-orphans


# Logs
logs:
	docker compose logs -f --tail 10

logs-odoo:
	docker compose logs web -f --tail 10

logs-postgres:
	docker compose logs db -f --tail 10


# Odoo and Postgres commands
odoo-shell:
	docker compose exec web odoo shell -d ${database}

odoo-update-addon:
	docker compose exec web odoo -d ${database} -u ${addon} --stop-after-init

psql:
	docker compose exec db psql -U ${user} -d ${database}
