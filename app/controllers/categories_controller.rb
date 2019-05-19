class CategoriesController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.where("lower(name) like ?", params[:id].downcase)[0]
        if @category
            @produtos = @category.produtos
            @categories = Category.all
        else
            redirect_to root_path
        end
    end
end
