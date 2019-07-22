class InventoryPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.joins(:flat).where("flats.company_id = ?", user.company_id)
      # scope.joins(:flat).where(flats: { company_id: user.company_id })
    end
  end
end
