class AddChoiceToAnyshare < ActiveRecord::Migration[5.0]
  def change
    add_column :anyshares, :choice, :string
  end
end
