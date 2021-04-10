# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sjakku <sjakku@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/15 11:19:10 by flavon            #+#    #+#              #
#    Updated: 2021/04/11 01:29:28 by sjakku           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby:3.0.0
EXPOSE 3000

RUN apt-get update && apt-get install -y yarn nodejs postgresql

COPY ./start.sh .
RUN chmod +x start.sh

# Project directory
WORKDIR /transcendence_app

# Library install
RUN gem update --system
RUN gem install rails

# Copy GemFile
COPY ./transcendence_app/Gemfile Gemfile
COPY ./transcendence_app/Gemfile.lock Gemfile.lock

RUN bundle install

CMD sh start.sh
