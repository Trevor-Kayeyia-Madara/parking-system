class Attendee < ApplicationRecord
    has_many :cars, dependent: :destroy
end
