class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.references :user, index: true
      t.references :color, index: true
      t.integer :price
      t.binary :active
      t.references :combo_pack, index: true

      t.timestamps
    end
  end
end
