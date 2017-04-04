# Zalenium
- Uses [docker-selenium](https://github.com/elgalu/docker-selenium) and [zalenium](https://github.com/zalando/zalenium).  
- Very efficient and works with saucelabs, Browserstack and Testbot. Also dynamically launches containers and removes after execution.  
- Videos are captured
- Versions can be specified

Entire documentation is [here](https://github.com/zalando/zalenium/blob/master/docs/usage_examples.md#starting-zalenium-with-docker-compose)

# Quick Start

## Using docker-compose
`docker-compose -f docker-compose-v2.yml up -d`

## Using Swarm
`docker stack deploy --compose-file docker-compose-v3-swarm.yml grid`  


Access grid on :4444/grid/console  
Access live videos on :4444/grid/admin/live

*Note* Do NOT forget to read the above documentation. There are many cool features`
