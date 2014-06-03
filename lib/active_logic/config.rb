require 'active_support/core_ext/module/attribute_accessors'

module ActiveLogic
  module Config
    DEFAULT_MODEL_NAME = :declaration

    class << self
      attr_accessor :model_name

      def reset
        @model_name = DEFAULT_MODEL_NAME
      end
    end

    reset
  end
end
