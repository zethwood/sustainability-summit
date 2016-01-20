require "administrate/base_dashboard"

class SessionDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    event_name: Field::String,
    timeslot: Field::BelongsTo,
    name: Field::String,
    description: Field::Text,
    location: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    people: Field::HasMany
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :event_name,
    :timeslot,
    :name,
    :location,
    :description
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = ATTRIBUTE_TYPES.keys

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :people,
    :timeslot,
    :name,
    :description,
    :location,
  ]

  # Overwrite this method to customize how sessions are displayed
  # across all pages of the admin dashboard.
  #
  def display_resource(session)
    session.name
  end
end
