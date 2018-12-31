class Patient < User
  has_one :patient_info
  accepts_nested_attributes_for :patient_info
end