class Declaration < ActiveRecord::Base
  serialize :parameters, Array
end
