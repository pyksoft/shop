class ChargesController < ApplicationController

  def new
    @order_items = current_order.order_items
    render layout: 'application'
  end

  def create
    @order = Order.create(current_order)
    @order_items = @order.order_items.build(current_order.order_items)

    debugger

    @amount = @order.total
    # Amount in cents

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end

end
