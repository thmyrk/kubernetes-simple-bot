# syntax=docker/dockerfile:1
FROM ruby:3.0
# RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /simple-bot
COPY Gemfile /simple-bot/Gemfile
COPY Gemfile.lock /simple-bot/Gemfile.lock
RUN bundle install

COPY . .

# Add a script to be executed every time the container starts.
# COPY entrypoint.sh /usr/bin/
# RUN chmod +x /usr/bin/entrypoint.sh
# ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]
