# # frozen_string_literal: true

require 'rails/generators'
require 'rails/generators/base'
require 'rails/generators/controllers'

module Accounts
  # accounts/controllers/controllers_generator
  class ControllersGenerator < Rails::Generators::Base
    CONTROLLERS = %w[accounts_masters basic_groups groups sub_groups].freeze

    desc <<-DESC.strip_heredoc
      This will create the controllers for accounts masters
    DESC

    source_root File.expand_path('../templates', __dir__)

    def create_controllers
      CONTROLLERS.each do |name|
        template "#{name}_controller.rb", "app/controllers/accounts/#{name}_controller.rb"
      end
    end

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
