class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)

    # superadmin
    can :manage, :all if user.superadmin?

    # admin
    if user.admin?
      can :read, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :create, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :update, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :destroy, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
    end

    # moderator
    if user.moderator?
      can :read, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :create, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :update, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :destroy, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
    end

    # user
    if user.user?
      can :read, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :create, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :update, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
      can :destroy, [Project, Category, Participant, Sponsor, Post, Comment, PostComment, ImageComment, Gallery, Image]
    end
  end
end
