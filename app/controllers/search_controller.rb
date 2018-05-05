class SearchController < ApplicationController
  def user
    @result = User.search(params[:search])
    @follower = current_user.follows
  end

  def tip
  end
end
