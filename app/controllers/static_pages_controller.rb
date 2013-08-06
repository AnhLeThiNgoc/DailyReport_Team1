class StaticPagesController < ApplicationController

  def home
  	@detail = current_user.details.build if signed_in?
  end

  def help
  end

  def about
  end

end