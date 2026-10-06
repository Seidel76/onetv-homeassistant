# OneTV Server add-on image.
#
# Strategy: download the PUBLISHED, checksum-verified release binary
# (https://onetvconnect.com/server/dl/<version>/) instead of compiling Go on
# the device: no toolchain in the image, ~1 s instead of minutes on a Pi, and
# the exact same binary as every other platform. BUILD_VERSION is the add-on
# version from config.yaml (passed by the Supervisor).
ARG BUILD_FROM
FROM ${BUILD_FROM}

ARG BUILD_ARCH
ARG BUILD_VERSION
ARG BASE_URL=https://onetvconnect.com/server

RUN set -eux; \
    case "${BUILD_ARCH}" in \
      amd64)   f=onetv-server-linux-amd64 ;; \
      aarch64) f=onetv-server-linux-arm64 ;; \
      armv7)   f=onetv-server-linux-armv7 ;; \
      *) echo "unsupported arch ${BUILD_ARCH}" >&2; exit 1 ;; \
    esac; \
    v="${BUILD_VERSION}"; \
    curl -fsSL --retry 3 -o /tmp/SHA256SUMS "${BASE_URL}/dl/${v}/SHA256SUMS"; \
    curl -fsSL --retry 3 -o /usr/bin/onetv-server "${BASE_URL}/dl/${v}/${f}"; \
    want="$(awk -v f="${f}" '$2==f{print $1}' /tmp/SHA256SUMS)"; \
    test -n "${want}"; \
    echo "${want}  /usr/bin/onetv-server" | sha256sum -c -; \
    chmod 0755 /usr/bin/onetv-server; \
    rm -f /tmp/SHA256SUMS

COPY run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]
