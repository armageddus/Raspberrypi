#!/bin/bash

RRDPATH="/home/pi/temps"
XMLPATH="/var/www/highcharts"

rrdtool xport -s now-3h -e now --step 300 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature3h.xml

rrdtool xport -s now-24h -e now --step 900 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature24h.xml

rrdtool xport -s now-48h -e now --step 1800 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature48h.xml

rrdtool xport -s now-8d -e now --step 7200 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature1w.xml

rrdtool xport -s now-1month -e now --step 10800 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature1m.xml

rrdtool xport -s now-3month -e now --step 43200 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature3m.xml

rrdtool xport -s now-1y -e now --step 86400 \
DEF:a=$RRDPATH/hometemp.rrd:temp:AVERAGE \
DEF:b=$RRDPATH/hometemp.rrd:outtemp:AVERAGE \
XPORT:a:"Office" \
XPORT:b:"Outside" > $XMLPATH/temperature1y.xml
