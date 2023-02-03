# frozen_string_literal: true

require 'rails/generators'

module Accounts
  # accounts/migration/services_generator
  class ServicesGenerator < Rails::Generators::Base

    desc 'Generates services for accounting module'
    # source_root File.expand_path('../templates/services', __dir__)
    source_root File.expand_path('../../../../app/services/', __FILE__)

    def create_migration_file
      template 'hello_service.rb', 'app/services/accounts/hello_service.rb'
    end
  end
end
