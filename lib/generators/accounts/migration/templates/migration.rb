# frozen_string_literal: true

# migration/templates/migration
class AccountsMigration < Accounts::MIGRATION_BASE_CLASS
  def self.up
    create_table Accounts::BasicGroup do |t|
      t.string :name

      t.timestamps
    end

    create_table Accounts::Group do |t|
      t.string :name
      t.text :description

      t.timestamps
    end

    create_table Accounts::SubGroup do |t|
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
    drop_table Accounts::BasicGroup
    drop_table Accounts::Group
    drop_table Accounts::SubGroup
    drop_table Accounts::AccountMaster
  end
end
