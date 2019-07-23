class CommentsController < ApplicationController
  def index
    @comments = policy_scope(comments)
  end
end
