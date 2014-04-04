class CreateComboPacks < ActiveRecord::Migration
  def change
    create_table :combo_packs do |t|
      t.references :user, index: true

      t.timestamps
    end
  end
end
