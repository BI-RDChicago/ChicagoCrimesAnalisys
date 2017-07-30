class CreateCommunityAreas < ActiveRecord::Migration[5.0]
  def change
    create_table :community_areas do |t|
      t.integer :IdSource
      t.string :Description

      t.timestamps
    end
  end
end
