class CreateCrimes < ActiveRecord::Migration[5.0]
  def change
    create_table :crimes do |t|
      t.integer :IdSource
      t.timestamp :Date
      t.string :LocationDescription
      t.boolean :Arrest
      t.boolean :Domestic
      t.string :CommunityArea

      t.timestamps
    end
  end
end
