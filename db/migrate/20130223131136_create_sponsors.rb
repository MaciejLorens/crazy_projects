class CreateSponsors < ActiveRecord::Migration
  def change
    create_table :sponsors do |t|
      t.integer :participant_id

      t.float :value
      t.text :description

      t.timestamps
    end
  end
end
