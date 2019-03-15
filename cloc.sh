#!/usr/bin/env bash
cloc --xml --by-file --out=/data/cloc.xml "$@"
xsltproc /opt/cloc/cloc2sloccount.xsl /data/cloc.xml > /data/sloccount.sc
