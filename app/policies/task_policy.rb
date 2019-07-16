class TaskPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(company: user.company)
    end
  end

  def create?
    company_check
  end

  def update?
    company_check
  end

  private

  def company_check
    record.company == user.company
  end
end
