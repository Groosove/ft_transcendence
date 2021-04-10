#!/bin/bash

set -e
cd transcendence_app
rm -rf tmp/pids/server.pid

bin/rails db:create --trace
bin/rails db:migrate --trace

# Start Server
rails server -b 0.0.0.0
