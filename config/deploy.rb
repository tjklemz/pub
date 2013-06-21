set :stages, %w{ prod dev }
set :default_stage, "dev"
require 'capistrano/ext/multistage'

set :application, "pub"
default_run_options[:pty] = true
set :repository, "git@github.com:tjklemz/pub.git"
set :ssh_options, { :forward_agent => true }

