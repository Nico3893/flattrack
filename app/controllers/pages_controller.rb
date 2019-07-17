class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [:home]


  def dashboard
    @tasks = Task.where(company: current_user.company)
  end
end
