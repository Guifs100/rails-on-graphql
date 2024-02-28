# syntax=docker/dockerfile:1
FROM ruby:3.2

USER "${USER}"

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client
WORKDIR /rails-on-graphql
COPY --chown="${USER}" Gemfile /rails-on-graphql/Gemfile
COPY --chown="${USER}" Gemfile.lock /rails-on-graphql/Gemfile.lock
RUN bundle install

# Add a script to be executed every time the container starts.
COPY --chown="${USER}" entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3003

# Configure the main process to run when running the image
CMD ["rails", "server", "-b", "0.0.0.0"]

USER "${USER}"
