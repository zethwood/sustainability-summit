require "administrate/base_dashboard"

class TimeslotDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    event: Field::BelongsTo,
    sessions: Field::HasMany,
    id: Field::Number,
    start: Field::DateTime,
    end: Field::DateTime,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :event,
    :sessions,
    :id,
    :start,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :event,
    :sessions,
    :start,
    :end,
  ]

  # Overwrite this method to customize how timeslots are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(timeslot)
  #   "Timeslot ##{timeslot.id}"
  # end
end
