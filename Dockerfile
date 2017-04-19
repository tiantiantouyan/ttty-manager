FROM ruby:2.4.1

# RUN apt-get update -qq && apt-get install -y libmysqlclient-dev

RUN mkdir /ttty-manager
WORKDIR /ttty-manager
ADD ./ /ttty-manager

RUN bundle install --without test development
RUN rake assets:precompile

ENTRYPOINT ./boot

