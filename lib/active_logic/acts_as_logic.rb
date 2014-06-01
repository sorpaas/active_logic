module ActiveLogic
  module ActsAsLogic
    extend ActiveSupport::Concern

    included do

    end

    module ClassMethods
      def acts_as_logic(options = {})

      end
    end

    module LocalInstanceMethods
      def declare

      end

      def ask

      end
    end
  end
end

ActiveRecord::Base.send :include, ActiveLogic::ActsAsLogic
