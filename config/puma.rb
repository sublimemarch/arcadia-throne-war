require 'fileutils'

workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['MAX_THREADS'] || 5)
threads threads_count, threads_count

#preload_app!

# Directories
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"

# Socket Location
bind 'unix:/tmp/nginx.socket'

# Logging
stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", true

# Set master PID and state locations
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app

rackup      DefaultRackup
#port        ENV['PORT']     || 3000
environment ENV['RAILS_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveSupport.on_load(:active_record) do
    ActiveRecord::Base.establish_connection
    FileUtils.touch('/tmp/app-initialized')
  end
end

preload_app!
