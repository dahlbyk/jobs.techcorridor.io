FROM techcorridorio/jobengine:latest

USER root
RUN pkg-deb openssh-client # for `rake publish`

ADD Gemfile /src/Gemfile
ADD Gemfile.lock /src/Gemfile.lock
RUN bundle install

USER jobengine
