#!/bin/bash

set -e
cd transcendence_app
rm -rf tmp/pids/server.pid

rails db:create
rails db:migrate

# Start Server
rails server -b 0.0.0.0