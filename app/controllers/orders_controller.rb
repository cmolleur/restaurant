class OrdersController < ApplicationController

  def index
    @orders = Order.where(user_id: current_user.id)
    @orders = Order.all.sort_by {|m| m.created_at }
  end

# order_params.merge food_id: params[:appetizer_ids]

  def create
    if params[:appetizer_ids] then Order.create order_params.merge food_id: params[:appetizer_ids][0] end
    if params[:entree_ids] then Order.create order_params.merge food_id: params[:entree_ids][0] end
    if params[:dessert_ids] then Order.create order_params.merge food_id: params[:dessert_ids][0] end

    redirect_to party_path(order_params[:party_id])
  end

  def new
    @order   = Order.new
    @foods   = Food.all
    @entrees = Food.where category: "entree"
    @desserts = Food.where category: "dessert"
    @appetizers = Food.where category: "appetizer"
    @users   = User.all
    @parties = Party.all
  end


  def edit
    @order   = Order.find(params[:id])
    @foods   = Food.all
    @parties = Party.all
  end

  def show
    @foods = Order.where params[:food_id]
    @order = Order.find params[:id]
  end

  def update
    order = Order.find params[:id]
    order.update(is_completed: params[:is_completed])
    redirect_to orders_path
  end


  def destroy
    Order.destroy(params[:id])
    redirect_to orders_path
  end


  private

  def order_params
    params.require(:order).permit( :party_id, :food_id, :user_id, :is_completed)
  end

end
