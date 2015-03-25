class CreateMovetypes < ActiveRecord::Migration
  def change
    create_table :movetypes do |t|
      t.integer :movetype_id
      t.string :movetype_name
      t.string :movetype_desc

      t.timestamps null: false
    end
  end
end
