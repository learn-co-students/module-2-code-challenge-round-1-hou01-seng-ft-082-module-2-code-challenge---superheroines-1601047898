class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.string :heroine_id
      t.string :power_id
      t.string :strength

      t.timestamps
    end
  end
end
