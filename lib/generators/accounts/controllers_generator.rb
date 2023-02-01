# # frozen_string_literal: true

# require 'rails/generators'
# require 'rails/generators/controllers'

# module Accounts
#   # accounts/controllers/controllers_generator
#   class ControllersGenerator < Rails::Generators::Base
#     CONTROLLERS = %w[accounts_masters basic_groups groups sub_groups].freeze

#     desc <<-DESC.strip_heredoc
#       This will create the controllers for accounts masters
#     DESC

#     source_root File.expand_path('../templates', __dir__)

#     def create_controllers
#       CONTROLLERS.each do |name|
#         template "#{name}_controller.rb", "app/controllers/accounts/#{name}_controller.rb"
#       end
#     end

#     def show_readme
#       readme 'README' if behavior == :invoke
#     end
#   end
# end
