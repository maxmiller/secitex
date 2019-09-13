
#threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }
#threads threads_count, threads_count
#port ENV.fetch("PORT") { 3000 }
#environment ENV.fetch("RAILS_ENV") { "development" }
# Change to match your CPU core count

# Change to match your CPU core count
workers 2
# Min and Max threads per worker
threads 1, 6
app_dir = File.expand_path("../..", __FILE__)
shared_dir = "#{app_dir}/shared"
rails_env = ENV['RAILS_ENV'] || "production"
environment rails_env
bind "unix://#{shared_dir}/sockets/puma.sock"
#bind "tcp://0.0.0.0:3000"
stdout_redirect "#{shared_dir}/log/puma.stdout.log", "#{shared_dir}/log/puma.stderr.log", false
pidfile "#{shared_dir}/pids/puma.pid"
state_path "#{shared_dir}/pids/puma.state"
activate_control_app
on_worker_boot do
  require "active_record"
  ActiveRecord::Base.connection.disconnect! rescue ActiveRecord::ConnectionNotEstablished
  ActiveRecord::Base.establish_connection(YAML.load_file("#{app_dir}/config/database.yml")[rails_env])
end
