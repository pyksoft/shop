class OrdersController < ApplicationController
helper_method :sort_column, :sort_direction


  def index
    @orders = Order.all
  end

  def set_order_status
    order.update_attribute(:order_status_id = 1)
  end

  def update_subtotal
    self[:subtotal] = subtotal
  end

  def update_shipping
    self[:shipping] = shipping
  end

  def update_tax
    self[:tax] = tax
  end

  def update_total
    self[:total] = total
  end


end
