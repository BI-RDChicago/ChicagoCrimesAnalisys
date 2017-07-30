class AddCommunityAreaRefToCrimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :crimes, :community_area, foreign_key: true
  end
end
