class Store::ItemsController < ApplicationController

  def index
    @items = Store.find_by(slug: params[:store]).items
    render "items/index" #allows us to force rails to look here for this instead of the further namespaced one
  end

end
