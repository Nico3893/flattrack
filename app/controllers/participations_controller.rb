class ParticipationsController < ApplicationController

  def index
    @participations = policy_scope(participations)
  end

end
