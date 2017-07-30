class CreateIucrs < ActiveRecord::Migration[5.0]
  def change
    create_table :iucrs do |t|
      t.string :iucrcode
      t.string :primary_description
      t.string :secondary_description

      t.timestamps
    end
  end
end
