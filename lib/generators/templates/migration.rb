# frozen_string_literal: true

# migration/templates/migration
class AccountsMigration < Accounts::MIGRATION_BASE_CLASS
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
end
