#!/usr/bin/env bash
#DESCRIPTION: Install database and dependencies with default data set

# generate default SSL private/public key
php dev-ops/generate_ssl.php

rm -rf vendor/shopware
rm -rf var/cache
rm -rf dev-ops/analyze/vendor
rm -rf composer.lock

INCLUDE: ./init-composer.sh
INCLUDE: ./init-database.sh
INCLUDE: ./init-shopware.sh
INCLUDE: ./init-test-databases.sh
