class CreateGadgets < ActiveRecord::Migration[7.0]
  def change
    create_table :gadgets do |t|
      t.string :brand
      t.text :description
      t.string :condition
      t.string :title
      t.decimal :price, precision:5, scale:2, default:0

      t.timestamps
    end
  end
end
