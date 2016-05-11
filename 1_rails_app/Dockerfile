FROM ruby:2.2

RUN apt-get update
RUN apt-get install -y nodejs

WORKDIR /work
ADD Gemfile /work/
ADD Gemfile.lock /work/

RUN bundle install --jobs 8 --retry 3

ADD . /work/

EXPOSE 4000
