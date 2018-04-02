class Access < ApplicationRecord
  has_many :access_roles
  has_many :roles, through: :access_roles
end
