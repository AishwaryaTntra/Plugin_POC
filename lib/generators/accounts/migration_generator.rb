# frozen_string_literal:  true

require 'rails/generators'
require 'rails/generators/migration'

module Accounts
  # accounts/migration/migration_generator
  class MigrationGenerator < Rails::Generators::Base
    include Rails::Generators::Migration

    desc 'Generates migration for accounting module'
    source_root File.expand_path('../templates/migrations', __dir__)

    def create_migration_file
      migration_template 'migration.rb', 'db/migrate/accounts_migration.rb'
    end

    def self.next_migration_number(dirname)
      if ActiveRecord::Base.timestamped_migrations
        Time.now.utc.strftime('%Y%m%d%H%M%S')
      else
        format('%.3d', (current_migration_numer(dirname) + 1))
      end
    end
  end
end
