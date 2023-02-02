# frozen_string_literal: true

require 'rails/generators/active_record'
require 'generators/accounts/orm_helpers'

module ActiveRecord
  module Generators
    class AccountsGenerator < ActiveRecord::Generators::Base

      argument :attributes, type: :array, default: [], banner: 'field: type field type'

      class_option :primary_key_type, type: :string, desc: 'The type for primary key'

      include Devise::Generators::OrmHelpers
      source_root File.expand_path("../templates", __dir__)

      def copy_devise_migration
        if (behavior == :invoke && model_exists?) || (behavior == :revoke && migration_exists?(table_name))
          migration_template 'migration_existing.rb', "#{migration_path}/add_devise_to_#{table_name}.rb", migration_version: migration_version
        else
          migration_template 'migration.rb', "#{migration_path}/devise_create_#{table_name}.rb", migration_version: migration_version
        end
      end

      def generate_model
        invoke "active_record:model", [name], migration: false unless model_exists? && behavior == :invoke
      end

      def inject_devise_content
        content = model_contents

        class_path = if namespaced?
          class_name.to_s.split("::")
        else
          [class_name]
        end

        indent_depth = class_path.size - 1
        content = content.split('\n').map { |line| " " * indent_depth + line }.join('\n') << '\n'

        inject_into_class(model_path, class_path.last, content) if model_exists?
      end

      def migration_data
       <<RUBY
        def self.up
          create_table :basic_groups do |t|
            t.string :name
      
            t.timestamps
          end
      
          create_table :groups do |t|
            t.string :name
            t.text :description
      
            t.timestamps
          end
      
          create_table :sub_groups do |t|
            t.string :name
            t.string :basic_group_name
      
            t.timestamps
          end
      
          create_table :account_masters do |t|
            t.string :name
            t.decimal :balance
      
            t.timestamps
          end
        end
      
        def self.down
          drop_table :basic_groups
          drop_table :groups
          drop_table :sub_groups
          drop_table :account_masters
        end
       RUBY
      end

      def rails5_and_up?
        Rails::VERSION::MAJOR >= 5
      end

      def rails61_and_up?
        Rails::VERSION::MAJOR > 6 || (Rails::VERSION::MAJOR == 6 && Rails::VERSION::MINOR >= 1)
      end

      def migration_version
        if rails5_and_up?
          "[#{Rails::VERSION::MAJOR}.#{Rails::VERSION::MINOR}]"
        end
      end

      def primary_key_type
        primary_key_string if rails5_and_up?
      end

      def primary_key_string
        key_string = options[:primary_key_type]
        ", id: :#{key_string}" if key_string
      end
    end
  end
end
