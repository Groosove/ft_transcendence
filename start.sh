#!/bin/bash

set -e
# Remove a potentioa;;y pre-existing server.pid for Rails
rm -rf /transcendence_app/tmp/pids/server.pid
cd transcendence_app

rails db:create
rails db:migrate

# Start Server
rails server -b 0.0.0.0