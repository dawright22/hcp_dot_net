#!/bin/bash


vault write projects-api/database/roles/projects-api-role \
    db_name=projects-database \
    creation_statements="CREATE LOGIN [{{name}}] WITH PASSWORD = '{{password}}';\
				USE HashiCorp;\
				CREATE USER [{{name}}] FOR LOGIN [{{name}}];\
        GRANT SELECT,UPDATE,INSERT,DELETE TO [{{name}}];" \
    default_ttl="2m" \
    max_ttl="5m"

docker-compose -f docker-compose-vault-agent-template.yml up -d