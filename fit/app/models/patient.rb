class Patient < User
  has_one :patient_info
  accept_nested_attributes_for :patient_info
end