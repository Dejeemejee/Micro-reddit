class CreateComments < ActiveRecord::Migration[8.0]
  def change
    create_table :comments do |t|
      t.string :commenter, null: false
      t.text :comment, null: false

      t.timestamps
    end
  end
end
