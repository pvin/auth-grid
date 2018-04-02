class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :roles

  def manager?
    self.roles.pluck(:name).include?('manager')
  end

  def customer?
    self.roles.pluck(:name).include?('customer')
  end

end
