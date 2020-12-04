class OrdersController < ApplicationController
  def new
  end

  def create
    # Before the rescue, at the beginning of the method
<<<<<<< HEAD
  # @user = User.current_user
  # @product = Product.first
  # @amount = @product.price
  # @stripe_amount = (@amount * 100).to_i
  # Before the rescue, at the beginning of the method
  @stripe_amount = 500
  begin
    customer = Stripe::Customer.create({
    email: params[:stripeEmail],
    source: params[:stripeToken],
    })
    charge = Stripe::Charge.create({
    customer: customer.id,
    amount: @stripe_amount,
    description: "Achat d'un produit",
    currency: 'eur',
    })
  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_order_path
  end
  # After the rescue, if the payment succeeded
  end
end
