class AddIucrRefToCrimes < ActiveRecord::Migration[5.0]
  def change
    add_reference :crimes, :iucr, foreign_key: true
  end
end
