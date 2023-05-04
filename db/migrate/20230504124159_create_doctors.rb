class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name, null: false, limit: 50
      t.string :city, null: false, limit: 50
      t.string :description, null: false, limit: 500
      t.string :image, null: false
      t.string :department, null: false, limit: 50
      t.timestamps
    end
  end
end
