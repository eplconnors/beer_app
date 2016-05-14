class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.string :name
      t.decimal :abv
      t.text :description

      t.timestamps null: false
    end
  end
end
