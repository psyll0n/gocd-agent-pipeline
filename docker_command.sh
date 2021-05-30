#!/bin/bash

docker run -itd --name gocd-agent -e CI=true -e GO_SERVER_URL=https://$(docker inspect --format='{{(index (index .NetworkSettings.IPAddress))}}' gocd-server):8154/go gocd/gocd-agent-alpine-3.8:v18.10.0
