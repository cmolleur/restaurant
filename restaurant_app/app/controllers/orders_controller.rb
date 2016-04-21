class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    new_order = Order.create order_params
    redirect_to order_path(new_order)
  end

  def new
    @order   = Order.new
    @foods   = Food.all
    @users   = User.all
    @parties = Party.all
  end


  def edit
    @order   = Order.find(params[:id])
    @foods   = Food.all
    @parties = Party.all
  end

  def show
    @order = Order.find params[:id]
  end

  def update
    order = Order.find params[:id]
    order.update order_params
    redirect_to order_path order.id
  end

  def destroy
    Order.destroy(params[:id])
    redirect_to order_path
  end


  private

  def order_params
    params.require(:order).permit( :party_id, :food_id, :user_id, :is_completed)
  end

end
