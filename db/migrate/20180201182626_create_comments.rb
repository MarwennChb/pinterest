class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :pin_id
      t.integer :user_id
      t.references :pin, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
