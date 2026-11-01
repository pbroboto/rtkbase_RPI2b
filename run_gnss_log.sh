#!/bin/bash
# run_gnss_log.sh: Log NMEA sentences from UM980 to file for PPP post-processing

BASEDIR="$(dirname "$0")"
source <( grep -v '^#' "${BASEDIR}"/settings.conf | grep '=' )

GNSS_LOG_DIR="${datadir}/gnss_logs"
mkdir -p "${GNSS_LOG_DIR}"

# Read NMEA from TCP stream (same source as other services), log to timestamped file
# ::T appends timestamp, S=3600 rotates every hour
str2str -in "tcpcli://localhost:${tcp_port}#nmea" \
        -out "file://${GNSS_LOG_DIR}/%Y-%m-%d_%H-%M-%S_GNSS.nmea::T::S=3600" \
        -t 1 \
        -fl /tmp/str2str_gnss_log.log
