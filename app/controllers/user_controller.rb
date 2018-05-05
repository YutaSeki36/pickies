class UserController < ApplicationController
  def index
  end

  def show
  end

  def followings
  end

  def followers
  end

  def follow
    current_user.follow(User.find(follow_params[:follow_id]))

    respond_to do |format|
        format.html { redirect_to root_path, notice: 'Tip was successfully created.' }
        format.json { render :show, status: :created, location: root_path }
    end
  end

  private

    def follow_params
      params.require(:follow).permit(:user_id, :follow_id)
    end
end
