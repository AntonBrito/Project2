class Event < ApplicationRecord
  belongs_to :user, dependent: :delete
end
