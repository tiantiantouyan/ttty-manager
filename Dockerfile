# Need nc command
FROM ruby:2.4.1-ttty

RUN mkdir /ttty-manager
WORKDIR /ttty-manager
ADD ./ /ttty-manager

RUN bundle install --without test development
RUN bundle exec rake assets:precompile RAILS_ENV=production

ENTRYPOINT ./boot

