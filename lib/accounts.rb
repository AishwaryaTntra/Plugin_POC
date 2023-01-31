require 'accounts/version'
require 'accounts/railtie'

# module Accounts
#   # Your code goes here...
# end
require 'test/dummy/app/models/accounts/*'
require 'test/dummy/app/controllers/accounts/*'
require 'test/dummy/app/views/accounts/*'
require 'test/dummy/config/routes'

Accounts::MIGRATION_BASE_CLASS = if ActiveRecord::VERSION::MAJOR >= 5
                                   ActiveRecord::Migration[5.0]
                                 else
                                   ActiveRecord::Migration
                                 end
