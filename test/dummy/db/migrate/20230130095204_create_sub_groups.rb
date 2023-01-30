class CreateSubGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_groups do |t|
      t.string :name
      t.string :basic_group_name

      t.timestamps
    end
  end
end
