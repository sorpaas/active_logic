require 'active_support/core_ext/module/attribute_accessors'

module ActiveLogic
  module Config
    DEFAULT_MODEL_NAME = :declaration

    def self.model_name
      @@model_name
    end

    def self.model_name=(value)
      @@model_name = value
    end

    def self.reset
      @@model_name = DEFAULT_MODEL_NAME
    end

    reset
  end
end
