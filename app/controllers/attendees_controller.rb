class AttendeesController < ApplicationController
    def new
        @attendee = Attendee.new
        @attendee.cars.build # Build an empty car for the attendee
      end
    def create
      @attendee = Attendee.new(attendee_params)
      if @attendee.save
        flash[:success] = "Registration successful. Your ticket number is: #{@attendee[:number_plate]}"
        render json: { success: true, message: "Registration successful. Your ticket number is: #{@attendee[:number_plate]}" }
      else
        render json: { success: false, errors: @attendee.errors.full_messages }
      end
    end
  
    private
  
    def attendee_params
        params.permit(:name, :email, :phone_number, :number_plate, :car_model)
      end      
  end
  