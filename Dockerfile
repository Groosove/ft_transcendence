# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flavon <flavon@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/15 11:19:10 by flavon            #+#    #+#              #
#    Updated: 2021/04/13 18:37:01 by flavon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby:3.0.0
EXPOSE 3000

RUN apt-get update && apt-get install -y yarn nodejs postgresql

COPY ./start.sh .
RUN chmod +x start.sh

#install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt update && apt install -y yarn

# Project directory
WORKDIR /transcendence_app

# Library install
RUN gem update --system
RUN gem install rails
RUN gem install rails bundler

# Copy GemFile
COPY ./transcendence_app/Gemfile Gemfile
COPY ./transcendence_app/Gemfile.lock Gemfile.lock

RUN bundle install
RUN yarn install

CMD sh start.sh
