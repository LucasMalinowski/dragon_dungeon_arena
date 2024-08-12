# Dockerfile
FROM ruby:3.1.4 AS base

# Install yarn and nodejs
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
  && echo "deb https://dl.yarnpkg.com/debian/ stable main" > /etc/apt/sources.list.d/yarn.list \
  && apt-get update \
  && apt-get install -y --no-install-recommends nodejs yarn libsqlite3-0 libvips \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

# Rails app lives here
WORKDIR /dragon_dungeon_arena

# Install gems
COPY Gemfile Gemfile.lock ./
RUN gem install bundler
RUN bundle install

# Install application dependencies
COPY . .
RUN yarn install

# Precompile assets
RUN SECRET_KEY_BASE_DUMMY=1 ./bin/rails assets:precompile

# Ensure the correct permissions
RUN chown -R nobody:nogroup /dragon_dungeon_arena

# Entrypoint prepares the database.
ENTRYPOINT ["./entrypoint.sh"]

# Start server
CMD ["bundle", "exec", "unicorn", "-c", "config/unicorn.rb"]
