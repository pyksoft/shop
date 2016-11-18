class OrdersController < ApplicationController
helper_method :sort_column, :sort_direction


  def index
    @orders = Order.all
  end



end
