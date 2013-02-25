class CreateCategoriesProjects < ActiveRecord::Migration
  def up
    create_table :categories_projects, :id => false do |t|
      t.integer :category_id
      t.integer :project_id
    end
  end

  def down
    drop_table :categories_projects
  end
end
