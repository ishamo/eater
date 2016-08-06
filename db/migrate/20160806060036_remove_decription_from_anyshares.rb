class RemoveDecriptionFromAnyshares < ActiveRecord::Migration[5.0]
  def change
    remove_column :anyshares, :description, :string
  end
end
