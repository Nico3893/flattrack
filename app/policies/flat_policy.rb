class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(company: user.company)
    end
  end

  def show?
    record.company == user.company
  end
end
