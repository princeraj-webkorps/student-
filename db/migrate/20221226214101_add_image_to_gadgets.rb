class AddImageToGadgets < ActiveRecord::Migration[7.0]
  def change
    add_column :gadgets, :image, :string
  end
end
