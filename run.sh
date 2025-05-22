#!/bin/sh

docker pull ghcr.io/michaeljberk/ls_mgna_test:dev

docker run --rm -p 8080:8080 ghcr.io/michaeljberk/ls_mgna_test:dev