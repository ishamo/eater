class AddChoiceToBigdatum < ActiveRecord::Migration[5.0]
  def change
    add_column :bigdata, :choice, :string
  end
end
