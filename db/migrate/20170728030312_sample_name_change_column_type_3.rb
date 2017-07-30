class SampleNameChangeColumnType3 < ActiveRecord::Migration[5.0]
  def change
  	rename_column :crimes, :IdSource, :id_source
  	rename_column :crimes, :Date, :date
  	rename_column :crimes, :LocationDescription, :location_description

  	rename_column :crimes, :Arrest, :arrest
  	rename_column :crimes, :Domestic, :domestic
  end
end
