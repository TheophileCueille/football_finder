class CreateCompets < ActiveRecord::Migration[5.2]
  def change
    create_table :compets do |t|
      t.string :address
      t.decimal :latitude
      t.decimal :longitude

      t.timestamps
    end
  end
end
