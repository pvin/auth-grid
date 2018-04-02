class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new
    access user
    if user.manager?
      can @role_arr, @elemt#, user_id: user.id
    elsif user.customer?
      can @role_arr, @elemt
    end

  end

  def access user
    @role_arr = []
    @elemt = []
    user.roles.each do |role|
      @role_arr.push(role.accesses.pluck(:name))
      @elemt.push((Element.find role.access_roles.pluck(:element_id)).map(&:name))
    end
    @role_arr = @role_arr.flatten.collect {|r| r.to_sym }
    @elemt = @elemt.flatten.collect{|e| Object.const_get e}

  end


end


