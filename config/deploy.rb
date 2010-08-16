set :application, "fb_test_app"
set :repository,  "git@github.com:seeweer/fb_test_app.git"
set :user, "ror-fb_test_app"
set :use_sudo, false

set :scm, :git

role :web, "83.19.4.130"
role :app, "83.19.4.130"
role :db,  "83.19.4.130", :primary => true

# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end
#
task :after_update_code do
  run "ln -nfs #{deploy_to}/#{shared_dir}/config/database.yml #{release_path}/config/database.yml"
end
