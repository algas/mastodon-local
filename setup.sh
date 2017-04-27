#!/bin/bash
docker-compose build
docker-compose run --rm web rake secret
docker-compose run --rm web rake db:migrate
docker-compose run --rm web rake assets:precompile
