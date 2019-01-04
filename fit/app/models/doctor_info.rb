class DoctorInfo < ApplicationRecord
  belongs_to :doctor
  validates :speciality, :success_price, :failure_price, presence: true
  
end
