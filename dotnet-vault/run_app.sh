#!/bin/bash


cd ProjectApi

dotnet restore

VAULT_SECRET_ID=$(cat vault-agent/secret-id) dotnet run