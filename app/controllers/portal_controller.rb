class PortalController < ApplicationController
  def index
    @categories = Category.all
  end
end
