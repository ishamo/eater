class AddChoiceToPeople < ActiveRecord::Migration[5.0]
  def change
    add_column :people, :choice, :string
  end
end
