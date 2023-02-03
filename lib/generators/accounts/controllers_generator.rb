# # frozen_string_literal: true

require 'rails/generators/base'

module Accounts
  # accounts/controllers/controllers_generator
  class ControllersGenerator < Rails::Generators::Base
    CONTROLLERS = %w[account_masters basic_groups groups sub_groups].freeze

    desc <<-DESC.strip_heredoc
      This will create the controllers for accounts masters
    DESC

    # if we want to generate the controller files directly from the app folder 
    # source_root File.expand_path('../../../../app/controllers/accounts', __FILE__) 

    # if you want to generate the controller files from the templates
    source_root File.expand_path('../templates/controllers', __dir__)

    def create_controllers
      CONTROLLERS.each do |name|
        template "#{name}_controller.rb", "app/controllers/accounts/#{name}_controller.rb"
      end
    end

    # comment this method if we are over riding from the app folder
    def show_readme
      readme 'README' if behavior == :invoke
    end

    def add_accounts_routes
      account_routes = "scope module: 'accounts' do ".dup
      CONTROLLERS.each do |class_name|
        account_routes << %(" resources :#{class_name} ")
      end
      account_routes << 'end'
      route account_routes
    end
  end
end
