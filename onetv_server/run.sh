#!/usr/bin/with-contenv bashio
# shellcheck shell=bash
# OneTV Server add-on entry point.
set -e

RECORDINGS="$(bashio::config 'recordings_path')"
case "${RECORDINGS}" in
    /media|/media/*|/share|/share/*) ;;
    *) bashio::exit.nok "recordings_path must be under /media or /share (got: ${RECORDINGS})" ;;
esac
mkdir -p "${RECORDINGS}" /data

if bashio::config.has_value 'name'; then
    ONETV_NAME="$(bashio::config 'name')"
    export ONETV_NAME
fi

bashio::log.info "OneTV Server — recordings in ${RECORDINGS}"
bashio::log.info "Pair it from OneTV Connect (Settings > Recording > Recording server) or with the « Associer un appareil » button in the panel."

# Ingress: Home Assistant proxies the panel to port 8099 (from 172.30.32.2).
exec /usr/bin/onetv-server serve \
    --data /data \
    --recordings "${RECORDINGS}" \
    --ingress-port 8099
