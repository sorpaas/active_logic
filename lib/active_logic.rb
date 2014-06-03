require 'active_logic/version'
require 'active_logic/config'

require 'active_logic/acts_as_logic'

module ActiveLogic
  def self.config(&block)
    if block_given?
      block.call(ActiveLogic::Config)
    else
      ActiveLogic::Config
    end
  end

  def self.model
    ActiveLogic.config.model.to_s.camelize.constantize
  end
end
