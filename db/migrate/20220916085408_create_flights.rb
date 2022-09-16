class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.datetime :takeoff
      t.integer :duration
      t.references :departure, null: false, foreign_key: { to_table: :airports }
      t.references :arrival, null: false, foreign_key: { to_table: :airports }

      t.timestamps
    end
  end
end
