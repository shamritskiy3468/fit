class Doctor < User
  has_one :doctor_info
  accepts_nested_attributes_for :doctor_info
end