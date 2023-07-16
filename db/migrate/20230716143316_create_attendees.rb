class CreateAttendees < ActiveRecord::Migration[7.0]
  def change
    create_table :attendees, id: false do |t|
      t.string :number_plate, primary_key: true
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :car_model

      t.timestamps
    end
  end
end
