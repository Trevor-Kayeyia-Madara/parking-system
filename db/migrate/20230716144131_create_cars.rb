class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :number_plate
      t.string :car_model
      t.references :attendee, null: false, foreign_key: true

      t.timestamps
    end
  end
end
