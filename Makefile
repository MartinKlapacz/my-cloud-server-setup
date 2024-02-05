.PHONY: list owncloud-up owncloud-down websites-up websites-down portainer-up portainer-down azuracast-up azuracast-down

list:
	@LC_ALL=C $(MAKE) -pRrq -f $(lastword $(MAKEFILE_LIST)) : 2>/dev/null | awk -v RS= -F: '/(^|\n)# Files(\n|$$)/,/(^|\n)# Finished Make data base/ {if ($$1 !~ "^[#.]") {print $$1}}' | sort | egrep -v -e '^[^[:alnum:]]' -e '^$@$$'


cleanfolio-up:
	docker compose -f cleanfolio.yml up -d

portainer-up:
	docker compose -f portainer.yml up -d

owncloud-up:
	docker compose -f owncloud.yml up -d

stirling-pdf-up:
	docker compose -f stirling-pdf.yml up -d


cleanfolio-down:
	docker compose -f cleanfolio.yml down

portainer-down:
	docker compose -f portainer.yml down

owncloud-down:
	docker compose -f owncloud.yml down

stirling-pdf-down:
	docker compose -f stirling-pdf.yml down
