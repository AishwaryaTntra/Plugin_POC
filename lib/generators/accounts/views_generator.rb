# frozen_string_literal: true

require 'rails/generators/base'

module Accounts
  module Generators
    class ViewsGenerator < Rails::Generators::Base
      desc 'Copies Accounts views to your application.'
      argument :scope, required: false, default: 'accounts',
                       desc: 'The scope to copy views to'

      source_root File.expand_path('../templates/views_for', __dir__)

      def copy_views
        view_directory(:account_masters)
        view_directory(:basic_groups)
        view_directory(:groups)
        view_directory(:sub_groups)
      end

      private

      def view_directory(name)
        directory name.to_s, "app/views/accounts/#{name}" do |content|
          if scope
            content.gsub('accounts/account_masters', 'accounts/account_masters')
          else
            content
          end
        end
      end
    end
  end
end
