#!/bin/bash

# variaveis
DUMP_FILE=exemplo.DMP
SCHEMA_OLD=old
SCHEMA_NEW=orcl
TS_OLD=old_data
TS_NEW=orcl_data

mv /opt/oracle/dpdump/${DUMP_FILE} /opt/oracle/admin/ORCL/dpdump/

impdp system/System#1 DUMPFILE=${DUMP_FILE} remap_schema=${SCHEMA_OLD}:${SCHEMA_NEW} remap_tablespace=${TS_OLD}:${TS_NEW}
