class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new(role: "guest")

    if user.admin?
        can :manage, :all
    elsif user.regular?
        can :manage, Location, user_id: user.id
    end
    can :read, :all
  end
end
