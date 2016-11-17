class ChargesController < ApplicationController

  def new
    @order_items = current_cart.order_items
    render layout: 'application'
  end

  def create
    @order = Order.new(params[:order])

    if @order.save

    @amount = (current_cart.total * 100).to_i
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


  else
    flash[:notice] = "order could not be created"
    end
  end


private

  def order_params
    params.require(:order).permit(:title, :subtotal, :tax, :shipping, :total)
  end

end
