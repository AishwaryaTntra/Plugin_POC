# frozen_string_literal: true

require 'rails/generators/named_base'

module Generators
  # lib > generators > accounts > accounts_generator
  class AccountsGenerator < Rails::Generators::NamedBase
    include Rails::Generators::ResourceHelpers

    namespace 'accounts'
    source_root File.expand_path('../templates', __dir__)

    desc 'accounts routes'
    hook_for :orm, required: true

    class_option :routes, desc: 'Generates routes', type: :boolean, default: true

    def add_accounts_routes
      account_routes = "scope module: 'accounts' do"
      ActiveRecord::Base.connection.tables.map do |class_name|
        account_routes << "resources: #{class_name}"
      end
      account_routes << 'end'
      route account_routes
    end
  end
end
