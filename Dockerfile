FROM geekle/centos
ADD ../../../ /app
WORKDIR /app
RUN bundle install --path vendor/bundle
VOLUME ["/var/run/unicorn", "/app"]
CMD bundle exec unicorn -l unix:///var/run/unicorn/unicorn.sock -c ./config/unicorn.rb
