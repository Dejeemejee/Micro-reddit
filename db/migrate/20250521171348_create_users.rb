class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.integer :age
      t.string :email, null: false
      t.string :password, null: false

      t.timestamps
    end

  end
end
