set :stages, %w{ prod dev }
set :default_stage, "dev"
require 'capistrano/ext/multistage'

set :app_port, 8000
set :server_name, "pub.com"
set :application, "pub"
default_run_options[:pty] = true
set :repository, "git@github.com:tjklemz/pub.git"
set :ssh_options, { :forward_agent => true }

require 'capistrano/nginx/tasks'
after "deploy:setup", "nginx:setup", "nginx:reload"

