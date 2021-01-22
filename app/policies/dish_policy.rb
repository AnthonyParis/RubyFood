class DishPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
		true
	end

	def new?
		#true
		#raise
		if record.first == nil
			true
		else
			record.first.restaurant.user == user
		end

	end

	def create?
		new?
		#raise
	end
	def destroy?
		record.user == user
	end
	
	def update?
		edit?
	end
end
