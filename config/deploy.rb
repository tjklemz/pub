set :stages, %w{ prod dev }
set :default_stage, "dev"
require 'capistrano/ext/multistage'

set :application, "creosite"
default_run_options[:pty] = true
set :repository, "git@creo.beanstalkapp.com:/creoagency-com-git-.git"
set :ssh_options, { :forward_agent => true }

