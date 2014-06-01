# desc "Explaining what the task does"
# task :activelogic do
#   # Task goes here
# end

namespace :activelogic do

  desc "Setup ActiveLogic Plugin"
  task :install do
    system 'rails generate activelogic:install'
  end

end
