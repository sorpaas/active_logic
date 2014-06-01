# desc "Explaining what the task does"
# task :activelogic do
#   # Task goes here
# end

namespace :active_logic do

  desc "Setup ActiveLogic Plugin"
  task :install do
    system 'rails generate activelogic:install'
  end

end
