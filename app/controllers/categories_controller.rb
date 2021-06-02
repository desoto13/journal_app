class CategoriesController < ApplicationController
    include Devise::Controllers::Helpers 
    before_action :authenticate_user!
    def index
        @categories = current_user.categories.all
    end
    
    def show
        @category = current_user.categories.find(params[:id])
        @tasks = @category.tasks.all
    end
    
    def new
        @category = current_user.categories.build
    end
    
    def create
        @category = current_user.categories.build(category_params)
    
        if @category.valid?
            @category.save
            redirect_to @category
        else
          render :new
        end
    end
    
    def edit
        @category = current_user.categories.find(params[:id])
    end
    
    def update
        @category = current_user.categories.find(params[:id])
    
        if @category.update(category_params)
          redirect_to @category
        else
          render :edit
        end
    end
    
    def destroy
        @category = current_user.categories.find(params[:id])
        @category.destroy

        redirect_to categories_path
    end
    
    private

    def category_params
        params.require(:category).permit(:name, :description)
    end

end
