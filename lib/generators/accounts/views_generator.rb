# frozen_string_literal: true

require 'rails/generators/base'

module Accounts
  module Generators
    module ViewPathTemplates
      extend ActiveSupport::Concern

      included do
        argument :scope, required: false, default: 'accounts', desc: 'The scope to copy views to'
        class_option :markerb

        public_task :copy_views
      end

      def copy_views
        view_directory :account_masters
        view_directory :basic_groups
        view_directory :groups
        view_directory :sub_groups
      end

      protected 

      def view_directory(name, _target_path = nil)
        directory name.to_s, _target_path || "#{target_path}/#{name}" do |content|
          if scope
            content.gsub('accounts/account_masters', "#{plural_scope}/account_masters")
          else
            content
          end
        end
      end

      def target_path 
        @target_path ||= "app/views/#{plural_scope || :accounts}"
      end

      def plural_scope
        @plural_scope ||= scope.presence && scope.underscore.pluralize
      end
    end

    class FormForGenerator < Rails::Generators::Base
      include ViewPathTemplates
      source_root File.expand_path('../../../../app/views/accounts', __FILE__)
      desc 'Copies your default accounts views to your application'
      hide!
    end

    class ViewsForGenerator < Rails::Generators::Base
      include ViewPathTemplates
      source_root File.expand_path("../../templates/views_for", __File__)
      desc 'Copies simple form enabled views to your application.'
      hide!

      def copy_views
        super
      end
    end

    class ViewsGenerator < Rails::Generators::Base
      desc "Copies Accounts views to your application."

      argument :scope, required: false, default: 'accounts',
                       desc: "The scope to copy views to"
    end

  end
end