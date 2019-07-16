class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(company: user.company)
    end
  end

  def show?
    record.company == user.company
  end

  def update?
    record.company == user.company
  end
end
