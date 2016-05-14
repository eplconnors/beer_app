class CreateTaps < ActiveRecord::Migration
  def change
    create_table :taps do |t|
      t.references :drink, index: true, foreign_key: true
      t.references :businessprofile, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
