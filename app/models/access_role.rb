class AccessRole < ApplicationRecord
  belongs_to :access
  belongs_to :role
end
