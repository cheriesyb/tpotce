#!/bin/bash

apt-get install jq

accessToken=$(curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fvault.azure.net' -H Metadata:true --silent | jq -r '.access_token')

secret=$(curl 'https://tpotkeyvault.vault.azure.net/secrets/tpotSecret/8b4e6db37c3543f0a65264e2309935bc?api-version=2016-10-01' -H "Authorization: Bearer $accessToken" --silent | jq '.value')

export APP_KEY=$secret