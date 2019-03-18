module Types
  class Organization < BaseObject
    description 'A Organization'

    global_id_field :id
    timestamps
    field :name, String, null: true
    field :title, String, null: true
  end
end