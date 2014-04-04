class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer :top_speed
      t.references :window, index: true

      t.timestamps
    end
  end
end
