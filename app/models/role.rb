class Role < ApplicationRecord
  has_and_belongs_to_many :users

  has_many :access_roles
  has_many :accesses, through: :access_roles
end


