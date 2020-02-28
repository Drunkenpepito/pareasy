class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [  ]

  def home
  end

  def profile
  end

  def update_amount_user
    current_user.amount_cents += params[:user][:amount_cents].to_i
    current_user.save
    redirect_to profile_path
  end

end
