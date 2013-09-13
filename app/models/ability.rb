class Ability
  include CanCan::Ability

  def initialize(user)

    user ||= User.new

    if user.admin?
        if user.role? :superadmin
            can :manage, :all

        else 
            can :create, Comment
            can :update, Comment do |Comment|
                comment.try(:user) == user || user.role?(:moderator)
            end
        end
    end    
  end
end
