class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    access user
    @power.each do |k,v|
      can v, k
    end
  end

  def access user
    @power = Hash.new
    user.roles.each do |role|
      role.access_roles.each do |ac|
        @power[Object.const_get(element_name(ac.element_id))] = Access.find(AccessRole.where(role_id:role.id, element_id:ac.element_id).pluck(:access_id)).pluck(:name).flatten.collect {|r| r.to_sym }
      end
    end
  end

  def element_name id
    Element.find(id).name
  end

end


