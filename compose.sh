#!/usr/bin/env bash
set -eo pipefail

DEFAULT_FILES_BROWSER_BACKEND_VERSION="0.11.0"
DEFAULT_FILES_BROWSER_FRONTEND_VERSION="0.2.0"

export BACKEND_IMAGE_TAG="${BACKEND_IMAGE_TAG:-$DEFAULT_FILES_BROWSER_BACKEND_VERSION}"
export FRONTEND_IMAGE_TAG="${FRONTEND_IMAGE_TAG:-$DEFAULT_FILES_BROWSER_FRONTEND_VERSION}"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

COMPOSE_ARGS="-f ${DIR}/docker-compose.yaml"
if [[ -f "${DIR}/docker-compose.local.yaml" ]]; then
  COMPOSE_ARGS="$COMPOSE_ARGS -f ${DIR}/docker-compose.local.yaml"
fi

docker-compose $COMPOSE_ARGS "$@"
