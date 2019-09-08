class Appointment < ApplicationRecord
  belongs_to :consulting_room
  belongs_to :medic
  belongs_to :patient
end
