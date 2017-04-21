#! /usr/bin/env bash

# Wait mysql up
while [[ "$(nc -z -w5 $MYSQL_HOST $MYSQL_PORT && echo '' || echo '1')" ]]; do
  echo "Cannot connect to mysql: $MYSQL_HOST:$MYSQL_PORT, wait resty..."
  sleep 1
done

echo "Connect Suuccessed, Start app"

sleep 7

# bundle exec rake db:create
bundle exec rake db:migrate
bundle exec rake db:seed

RAILS_LOG_TO_STDOUT=true bundle exec puma -C config/puma.rb

