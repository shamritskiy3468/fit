class Doctor < User
  has_one :doctor_info
  accepts_nested_attributes_for :doctor_info, reject_if: :all_blank, allow_destroy: true
  #validates :phone, format: { with: /^(?:\+?\d{1,3}\s*-?)?\(?(?:\d{3})?\)?[- ]?\d{3}[- ]?\d{4}$/, message: 'global.errors.phone_format'}
end