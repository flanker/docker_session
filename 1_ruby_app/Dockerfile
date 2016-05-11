FROM ruby:2.2

WORKDIR /work

# bundle install
ADD Gemfile /work/
ADD Gemfile.lock /work/
RUN bundle install --jobs 8 --retry 3

ADD . /work/

ENTRYPOINT ["/work/bin/app"]
