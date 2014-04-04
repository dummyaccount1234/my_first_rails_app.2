class CreateWheels < ActiveRecord::Migration
  def change
    create_table :wheels do |t|
      t.references :car, index: true

      t.timestamps
    end
  end
end
