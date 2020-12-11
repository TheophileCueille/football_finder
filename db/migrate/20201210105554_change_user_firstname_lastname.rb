class ChangeUserFirstnameLastname < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :firstname, :string, null: true
    change_column :users, :lastname, :string, null: true

  end
end
