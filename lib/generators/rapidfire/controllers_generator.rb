require 'rails/generators'

module Rapidfire
  module Generators
    class ControllersGenerator < Rails::Generators::Base
      source_root File.expand_path("../../../../app/controllers/rapidfire", __FILE__)
      desc "Copies default Rapidfire controllers to your application."

      def copy_controllers
        controller_directory :rapidfire
        # view_directory :answer_groups
        # view_directory :answers
        # view_directory :question_groups
        # view_directory :questions
      end

      protected
      def controller_directory(name)
        directory name.to_s, "app/controllers/#{name}"
      end
    end
  end
end
