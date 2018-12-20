require "administrate/base_dashboard"

class PatientInfoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    patient: Field::BelongsTo,
    id: Field::Number,
    age: Field::Number,
    weight: Field::Number.with_options(decimals: 2),
    height: Field::Number.with_options(decimals: 2),
    aim_weight: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :patient,
    :id,
    :age,
    :weight,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :patient,
    :id,
    :age,
    :weight,
    :height,
    :aim_weight,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :patient,
    :age,
    :weight,
    :height,
    :aim_weight,
  ].freeze

  # Overwrite this method to customize how patient infos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(patient_info)
  #   "PatientInfo ##{patient_info.id}"
  # end
end
