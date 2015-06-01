class OrdersController < ApplicationController
  before_action :require_signin
  before_action :set_cart
  
  def new
    @order = Order.new
  end
  
  def create
    @order = current_user.orders.build
    transfer_cart_items
  end
  
  private
  def transfer_cart_items
    @cart.cart_items.each do |item|
      @order.order_items << OrderItem.new(
        book_id: item.book_id,
        quantity: item.quantity,
        price: item.price
      )
    end
  end
end
