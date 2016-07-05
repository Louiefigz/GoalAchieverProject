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
    render 'home'
  end

  def edit
  end

  def new
  end

  def show
  end
end
