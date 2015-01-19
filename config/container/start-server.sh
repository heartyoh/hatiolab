#!/bin/bash

# Start Database
/etc/init.d/postgresql start

cd /hatiolab
source /etc/profile.d/rvm.sh

# Reset database : generate database, table, seed data
bundle exec rake db:create RAILS_ENV=production

export SECRET_KEY_BASE=b6762c31541007db67761bd614a61222fae847af08ce4ed9aa2fe641f2be57042fc0c00505eb09fcd711c9d8f8a0c376e2f6d42a1a3be104616272de99baf643

# Start Unicorn Server as a deamon
bundle exec unicorn -D -p 8080 -E production

# Start NginX Server (should not start as a deamon)
nginx
