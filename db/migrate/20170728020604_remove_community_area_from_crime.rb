class RemoveCommunityAreaFromCrime < ActiveRecord::Migration[5.0]
  def change
    remove_column :crimes, :CommunityArea, :string
  end
end
