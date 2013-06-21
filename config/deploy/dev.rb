server "192.168.33.10", :app, :web, :db, :primary => true
set :user, "vagrant"
set :password, "vagrant"
set :sudo_user, "vagrant"
set :deploy_to, "/var/www"

