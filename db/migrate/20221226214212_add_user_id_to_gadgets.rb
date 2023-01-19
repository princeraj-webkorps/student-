class AddUserIdToGadgets < ActiveRecord::Migration[7.0]
  def change
    add_column :gadgets, :user_id, :integer
  end
end
