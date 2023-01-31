# frozen_string_literal: true

# migration/templates/migration
class AccountsMigration < Accounts::MIGRATION_BASE_CLASS
  def self.up
    create_table Accounts::BasicGroups do |t|
      t.string :name

      t.timestamps
    end

    create_table Accounts::Groups do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table Accounts::SubGroups do |t|
      t.string :name
      t.string :basic_group_name

      t.timestamps
    end

    create_table Accounts::AccountMaster do |t|
      t.string :name
      t.decimal :balance

      t.timestamps
    end
  end

  def self.down
    drop_table Accounts::BasicGroups
    drop_table Accounts::Groups
    drop_table Accounts::SubGroups
    drop_table Accounts::AccountMaster
  end
end
