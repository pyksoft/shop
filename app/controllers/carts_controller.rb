class CartsController < ApplicationController
before_action :authenticate_user!, except: [:show]

  def show
    @order_items = current_cart.order_items
  end

  def add_item(product_id)
    item = items.where('product_id = ?', product_id).first

    if item
      # increase the quantity of product in cart
      item.quantity + 1
      save
    else
      # product does not exist in cart
      cart.items << Item.new(product_id: product_id, quantity: 1)
    end
    save
  end

  def add_to_cart
    current_cart.add_item(params[:product_id])
    # redirect to shopping cart or whereever
  end


  def subtotal
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price.to_f) : 0 }.sum
  end

  def shipping
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price * 0.15).round(2) : 0 }.sum
  end

  def tax
    (subtotal * 0.21).round(2)
  end

  def total
    order_items.collect { |oi| oi.valid? ? (oi.quantity.to_i * oi.unit_price * 1.15 * 1.21).round(0) : 0 }.sum
  end

end
