set :stages, %w{ prod dev }
set :default_stage, "dev"

set :app_port, 80
set :application, "pub"
default_run_options[:pty] = true
set :repository, "git@github.com:tjklemz/pub.git"
set :ssh_options, { :forward_agent => true }

# N.B. :application must be defined before multistage
require 'capistrano/ext/multistage'

require 'capistrano/nginx/tasks'
after "deploy:setup", "nginx:setup", "nginx:reload"

