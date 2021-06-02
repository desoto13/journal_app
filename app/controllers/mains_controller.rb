class MainsController < ApplicationController
  def home
    @categories = current_user.categories.all if current_user != nil
  end
end
