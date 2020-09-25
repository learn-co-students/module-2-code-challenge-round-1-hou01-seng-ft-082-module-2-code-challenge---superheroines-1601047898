class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.integer :power_id
      t.integer :heroine_id
      t.string :strength

      t.timestamps
    end
  end
end
