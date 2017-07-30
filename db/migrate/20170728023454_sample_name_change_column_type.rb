class SampleNameChangeColumnType < ActiveRecord::Migration[5.0]
def change
    rename_column :community_areas, :IdSource, :id_source
  end
end
