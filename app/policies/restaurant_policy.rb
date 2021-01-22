class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      	scope.all
    end
  	end
  	def show?
		true
	end

	def new?
		true
	end

	def create?
		new?
		#raise
	end

	def edit?
		record.user == user
	end
	def destroy?
		record.user == user
	end
	
	def update?
		edit?
	end
end
