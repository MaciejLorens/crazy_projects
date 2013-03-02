class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :target
      t.string :needs
      t.text :description

      t.timestamps
    end
  end
end
