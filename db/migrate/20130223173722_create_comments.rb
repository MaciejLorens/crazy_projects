class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :parent_id
      t.integer :external_id
      t.integer :user_id
      t.text :content
      t.string :type

      t.timestamps
    end
  end
end
