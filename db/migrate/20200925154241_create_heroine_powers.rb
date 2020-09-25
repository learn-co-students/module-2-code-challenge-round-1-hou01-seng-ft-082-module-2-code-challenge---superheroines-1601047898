class CreateHeroinePowers < ActiveRecord::Migration[5.1]
  def change
    create_table :heroine_powers do |t|
      t.belongs_to :heroine 
      t.belongs_to :power 
      t.string :strength
      
      t.timestamps
    end
  end
end
