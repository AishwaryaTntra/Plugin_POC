# frozen_string_literal:  true

require 'rails/generators'

module Accounts
  # accounts/migration/migration_generator
  class ModelsGenerator < Rails::Generators::Base
    MODELS = %w[account_master basic_group group sub_group].freeze
    desc 'Generates models for accounting module'
    source_root File.expand_path('../templates/models/accounts', __dir__)

    def create_migration_file
      MODELS.each do |model_name|
        template "#{model_name}.rb", "app/models/accounts/#{model_name}.rb"
      end
    end
  end
end
