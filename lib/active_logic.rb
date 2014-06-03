require 'active_logic/version'
require 'active_logic/config'

require 'active_logic/acts_as_logic'

module ActiveLogic
  def self.config
    if block_given?
      yield(ActiveLogic::Config)
    else
      ActiveLogic::Config
    end
  end

  def self.model
    ActiveLogic.config.model_name.to_s.camelize.constantize
  end
end
