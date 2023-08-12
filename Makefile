up:
	docker compose up

upd:
	docker compose up -d

down:
	docker compose down

down-orphans:
	docker compose down --remove-orphans

logs:
	docker compose logs -f --tail 10

logs-odoo:
	docker compose logs web -f --tail 10

logs-postgres:
	docker compose logs db -f --tail 10

odoo-shell:
	docker compose exec web odoo shell -d ${database}

psql:
	docker compose exec db psql -U ${user} -d ${database}
