hostname = '176.58.123.107'
server hostname, :app, :web, :db, :primary => true

set :application,  "kuztusweb"
set :repository,   "git@github.com:stevecreedon/rentify-web.git"
set :branch,       "master"
set :env,          'production'
set :rails_env,    'production'
set :scm,          :git
set :deploy_to,    "/var/www/kuztusweb"
set :user,         "deploy"
set :use_sudo,     false

set :templater, :templates => ['database']

role :web, hostname                          # Your HTTP server, Apache/etc
role :app, hostname                          # This may be the same as your `Web` server
role :db,  hostname, :primary => true # This is where Rails migrations will run

