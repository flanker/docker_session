FROM ruby:2.2

RUN gem sources --add https://gems.ruby-china.org/ --remove https://rubygems.org/
RUN gem install httparty

ENTRYPOINT ["httparty"]
CMD ["http://www.google.com"]
