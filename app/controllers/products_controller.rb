class ProductsController < ApplicationController
helper_method :sort_column, :sort_direction

  def index
    @products = Product.all
    @order_item = current_cart.order_items.new
    if params[:search]
      @products = Product.search(params[:search]) unless params[:search].blank?
    else sort_direction
      @products = Product.order("#{sort_column} #{sort_direction}")
    end
  end

  def show
    @product = Product.find(params[:id])
  end

private

  def sort_column
    Product.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
