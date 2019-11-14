class BoughtsController < ApplicationController
  def bought
    @bought = Bought.new(user_id: current_user.id, item_id: session[:item_id])
  end

  def bought_request
    @bought = Bought.new(bought_params) 
    if @bought.save
      item=Item.find(@bought.item_id)
      item.update(status: "Sold")
      redirect_to user_path(current_user)
    else
    @bought = Bought.new(user_id: current_user.id, item_id: session[:item_id])
    render :bought
    end
  end

  private
  def bought_params
    params.require(:bought).permit(:date, :Pickup_time, :note, :user_id, :item_id)
  end
end
