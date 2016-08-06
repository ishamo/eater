class AddChoiceToEmc < ActiveRecord::Migration[5.0]
  def change
    add_column :emcs, :choice, :string
  end
end
