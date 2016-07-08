class UsersController < ApplicationController



  #
  # def self.new_with_session(params, session)
  #   super.tap do |user|
  #     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
  #       user.email = data["email"] if user.email.blank?
  #     end
  #   end
  # end


  def create

  end

  def update
  end

  def index
    @users = User.all

    respond_to do |f|
      f.html { render :show }
      f.json { render json: @users}
    end
    # render 'home'
  end

  def edit
  end

  def new

  end

  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name)
    end

end
