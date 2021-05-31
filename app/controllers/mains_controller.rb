class MainsController < ApplicationController
  def home
    @categories = Category.all
  end
end
