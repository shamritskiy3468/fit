class Project < ApplicationRecord
  has_one :doctor
  has_one :patient
end
