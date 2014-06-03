require File.expand_path('../utils', __FILE__)
require 'rails/generators'

module ActiveLogic
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)
    include Generators::Utils::InstanceMethods

    argument :_model_name, type: :string, required: false, desc: 'ActiveLogic declaration model name'
    desc 'ActiveLogic installation generator'

    def install
      @model_name = ask_for('What model name do you want to put new declarations?', 'declaration', _model_name)
      generate 'model', "#{@model_name} prefix:string parameters:text"
      template 'initializer.rb', 'config/initializers/active_logic.rb'
      inject_into_file "app/models/#{@model_name.underscore}.rb", after: "class #{@model_name.camelize} < ActiveRecord::Base\n" do
        "  serialize :parameters, Array\n"
      end
    end
  end
end
