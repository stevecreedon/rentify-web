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
set :shared_children, shared_children + %w{public/uploads}

set :templater, :templates => ['database', 'mailer']

role :web, hostname                          # Your HTTP server, Apache/etc
role :app, hostname                          # This may be the same as your `Web` server
role :db,  hostname, :primary => true # This is where Rails migrations will run

namespace :deploy do
  desc "Creates symlink to admin app uploaded images"
  task :symlink_to_uploads, :roles => :app do
    run "rm -rf /var/www/kuztusweb/shared/uploads && ln -s /var/www/kuztusadmin/shared/uploads/ /var/www/kuztusweb/shared"
  end
end

after 'deploy:create_symlink', 'deploy:symlink_to_uploads'

