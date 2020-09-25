class CreateHeroineassociations < ActiveRecord::Migration[5.1]
  def change
    create_table :heroineassociations do |t|
      t.integer :heroine_id
      t.integer :power_id
      t.string :strength
    end
  end
end
