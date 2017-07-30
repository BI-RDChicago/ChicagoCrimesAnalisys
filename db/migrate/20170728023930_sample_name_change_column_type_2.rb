class SampleNameChangeColumnType2 < ActiveRecord::Migration[5.0]
def change
    rename_column :community_areas, :Description, :description
  end
end
