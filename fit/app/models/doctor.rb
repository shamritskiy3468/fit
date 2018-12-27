class Doctor < User
  has_one :doctor_info
  accept_nested_attributes_for :doctor_info
end