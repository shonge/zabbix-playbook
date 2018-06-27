#!/bin/bash
cat ../*.ansible | grep 'image: ' | awk '{print $2}' | xargs -I {} docker pull {}
cat ../server.ansible  | grep 'image: ' | awk '{print $2}' | xargs docker save -o zabbix_server_imgs.tar
cat ../agent.ansible | grep 'image: ' | awk '{print $2}' | xargs docker save -o zabbix_agent_imgs.tar
