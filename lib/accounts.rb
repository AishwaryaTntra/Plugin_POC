require 'accounts/version'
require 'accounts/railtie'

# module Accounts
#   # Your code goes here...
# end
require 'app/models/accounts/*'
require 'app/controllers/accounts/*'
require 'app/views/accounts/*'
require 'config/routes'

Accounts::MIGRATION_BASE_CLASS = if ActiveRecord::VERSION::MAJOR >= 5
                                   ActiveRecord::Migration[5.0]
                                 else
                                   ActiveRecord::Migration
                                 end
