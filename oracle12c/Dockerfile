FROM alandma/oracle12c:12.2.0.1

COPY --chown=oracle:oinstall ./dump/ /opt/oracle/dpdump

COPY --chown=oracle:dba ./scripts/ /opt/oracle/scripts/setup
