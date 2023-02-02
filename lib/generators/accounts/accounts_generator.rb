# # frozen_string_literal: true

# require 'rails/generators/base'

# module Generators
#   # lib > generators > accounts > accounts_generator
#   class AccountsGenerator < Rails::Generators::NamedBase
#     include Rails::Generators::ResourceHelpers

#     MODEL_NAMES = %i[basic_group group sub_group account_master].freeze
#     namespace 'accounts'
#     source_root File.expand_path('../templates', __dir__)

#     def create_models
#       MODEL_NAMES.each do |model_name|
#         invoke 'active_record:model', model_name, migration: false
#       end
#     end

#     desc 'accounts routes'
#     hook_for :orm, required: true

#     class_option :routes, desc: 'Generates routes', type: :boolean, default: true

#     def add_accounts_routes
#       account_routes = "scope module: 'accounts' do ".dup
#       %w[basic_groups groups sub_groups account_masters].each do |class_name|
#         account_routes << %(" resources :#{class_name} ")
#       end
#       account_routes << 'end'
#       route account_routes
#     end
#   end
# end
