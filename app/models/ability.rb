class Ability
	include CanCan::Ability
	def initialize(user)
    # Here you can define custom aliases
    alias_action :index, :show, :clients, :employees, :to => :read
    alias_action :new, :register, :to => :create
    alias_action :edit, :edit_profile, :update_profile, :to => :update

      # Now lets lookup what the you can do based on there role
			can do |action, subject_class, subject|
				user.role.permissions.find_all_by_action(aliases_for_action(action)).any? do |permission|
					permission.subject_class == subject_class.to_s &&
							(subject.nil? || permission.subject_id.nil? || permission.subject_id == subject.id)
				end
			end
		end
end

#    @user = user || User.new
##    Feature #68 - This fixes this feature no with CanCan and Authlogic time_out
#    if @user.role.nil?
#      @user.role = "guest"
#    else
#      @user.role.each_line do |role|
#        send(role)
#      end
#    end
#    can [:register, :create], User
#    can [:read, :home], Page, :private => false
#  end
#
##
#  def client
#    can [:read, :update, :edit_profile, :update_profile], User, :id => @user.id
#    can :read, Page, :private => false
#    can :create, WorkOrder
#    can [:update, :read], WorkOrder, :user_id => @user.id
#    can :read, Invoice, :user_id => @user.id
#
#  end
##
#  def assistant
#    client
#  end
##
#  def accountant
#    assistant
#  end
##
#  def technician
#    can :manage, WorkOrder
#    can :manage, Product
#    can :manage, ProductCategory
#    can :manage, Page
#    can :manage, Invoice
#    can :manage, ServiceInvoiceLine
#    can :manage, ProductInvoiceLine
#    can :manage, ServiceRate
#    can [:read, :clients, :employees], User
#    can :update, User, :id => @user.id
##    can :update, User,["client = ?", true] do |user|
##      user.client = true
##    end
#  end
##
##
#  def manager
#    technician
#    can :manage, User
#    can :manage, PriorityList
#  end
##
#  def administrator
#    can :manage, :all
#  end
#
#end
