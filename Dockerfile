FROM ruby:2.6.3-alpine
RUN apk add --update perl make gcc g++ libc-dev py-pip
RUN pip install docutils
WORKDIR /usr/src/app
ADD Gemfile ./
RUN bundle install
COPY . .
EXPOSE 8080
CMD ["bundle", "exec", "rackup", "--host", "0.0.0.0", "-p", "8080"]
