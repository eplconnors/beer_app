class CreateBusinessprofiles < ActiveRecord::Migration
  def change
    create_table :businessprofiles do |t|
      t.references :business_user
      t.text :bio
      t.string :address
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
