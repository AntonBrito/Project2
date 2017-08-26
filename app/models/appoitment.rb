class Appoitment < ApplicationRecord
  belongs_to :user, dependent: :delete
  # belongs_to(:user, {})
  # belongs_to(:user, dependent: :destroy, through: :something)
  # belongs_to :user, {key: val, key2: val2}
end
