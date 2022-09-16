class ChangeDatetimeToDate < ActiveRecord::Migration[7.0]
  def change
    change_column :flights, :takeoff, :date
  end
end
