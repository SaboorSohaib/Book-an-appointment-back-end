class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 50
      t.string :gender, null: false, limit: 10
      t.integer :age, null: false
      t.timestamps
    end
  end
end
