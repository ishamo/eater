class RemoveDecriptionFromBigdatum < ActiveRecord::Migration[5.0]
  def change
    remove_column :bigdata, :description, :string
  end
end
