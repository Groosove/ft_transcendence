# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Dockerfile                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: flavon <flavon@student.21-school.ru>       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/03/15 11:19:10 by flavon            #+#    #+#              #
#    Updated: 2021/04/10 12:16:03 by flavon           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FROM ruby:3.0.0
EXPOSE 3000

RUN apt-get update && apt-get install -y yarn nodejs postgresql

# Project directory
WORKDIR /transcendence_app

# Library install
RUN gem update --system
RUN gem install rails

# Copy GemFile
COPY ./transcendence_app/Gemfile Gemfile
COPY ./transcendence_app/Gemfile.lock Gemfile.lock

RUN bundle install

# Start server
COPY ./start.sh .
RUN chmod +x start.sh

ENTRYPOINT ["/bin/bash", "start.sh"]