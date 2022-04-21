#!/bin/bash


docker-compose -f docker-compose-vault-agent-token.yml up -d

sleep 10

cd ProjectApi && consul-template -config ./vault-agent/config-consul-template.hcl