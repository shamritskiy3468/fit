class Patient < User
  has_one :patient_info
  accepts_nested_attributes_for :patient_info, reject_if: :all_blank, allow_destroy: true
  validates :height, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
  validates :weight, format: { with: /\A\d+\z/, message: "Integer only. No sign allowed." }
end