class CreateAccountsAccountMasters < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts_account_masters do |t|
      t.string :name
      t.decimal :balance

      t.timestamps
    end
  end
end
