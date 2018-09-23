# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative 'config/application'

Rails.application.load_tasks

namespace :production do
  # rake sample:migrate_and_fixtures
  desc "migrate load task.zashi"
  task "migrate" => ["db:migrate"]
end
