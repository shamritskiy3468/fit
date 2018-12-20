require "administrate/base_dashboard"

class DoctorInfoDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    doctor: Field::BelongsTo,
    id: Field::Number,
    speciality: Field::String,
    success_price: Field::Number.with_options(decimals: 2),
    failure_price: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :doctor,
    :id,
    :speciality,
    :success_price,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :doctor,
    :id,
    :speciality,
    :success_price,
    :failure_price,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :doctor,
    :speciality,
    :success_price,
    :failure_price,
  ].freeze

  # Overwrite this method to customize how doctor infos are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(doctor_info)
  #   "DoctorInfo ##{doctor_info.id}"
  # end
end
