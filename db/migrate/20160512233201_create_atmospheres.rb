class CreateAtmospheres < ActiveRecord::Migration
  def change
    create_table :atmospheres do |t|
      t.string :status

      t.timestamps null: false
    end
  end
end
