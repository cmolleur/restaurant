class PartiesController < ApplicationController
  def index
    @parties = Party.all
  end

  def create
    party = Party.create party_params
    if params[:create_and_continue]
      # Redirect to new form, for example.
      redirect_to new_order_path party.id
    else
      # Redirect to show the newly created record, for example.
      redirect_to parties_path
    end
  end

  def new
    @party = Party.new
  end

  def edit
    @party = Party.find(params[:id])
  end

  def show
    @party = Party.find(params[:id])
    @orders = Order.where( party_id: @party.id )
    @total = 0
    @party.foods.each do |food|
      @total += food.price
    end
  end

  def update
    party = Party.find params[:id]
    party.update party_params
    redirect_to party_path party.id
  end

  def destroy
    @party = Party.find params[:id]
    @party.destroy
    redirect_to parties_path
  end

private

def party_params
  params.require(:party).permit(:quantity, :table)
end

end
