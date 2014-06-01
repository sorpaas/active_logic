require 'activelogic/version'
require 'activelogic/acts_as_logic'

module ActiveLogic
  def self.config(&block)
    if block_given?
      block.call(RailsAdmin::Config)
    else
      RailsAdmin::Config
    end
  end
end
