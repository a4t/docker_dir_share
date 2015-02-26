#!/bin/bash

/etc/init.d/td-agent start
tail -f /var/log/td-agent/td-agent.log
