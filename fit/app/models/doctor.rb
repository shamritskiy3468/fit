class Doctor < User
  has_one :doctor_info
  accepts_nested_attributes_for :doctor_info, reject_if: :all_blank, allow_destroy: true
end