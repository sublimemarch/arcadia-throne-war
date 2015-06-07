namespace :nginx_test do
  desc "TODO"
  task server: :environment do
    `sudo nginx -s stop`
    `sudo nginx`
  end

end
