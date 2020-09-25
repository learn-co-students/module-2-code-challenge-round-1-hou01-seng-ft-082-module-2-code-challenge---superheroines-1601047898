class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.string :strength
      t.integer :heroine_id
      t.integer :power_id
    end
  end
end