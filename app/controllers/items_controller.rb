class ItemsController < ApplicationController
    # before_action :require_login
    # skip_before_action :require_login, only: [:index]

    def index
        @items=Item.all
    end
    
    def new
        @item = Item.new(user_id: current_user.id, address: current_user.address)
    end

    def create 
        @item = Item.new(item_params) 
        if @item.save
          redirect_to item_path(@item)
        else
          render :new
        end
    end

    def show 
        @item = Item.find(params[:id])
        session[:item_id]= @item.id
    end

    def edit
         @item = Item.find(params[:id])
    end

    def update
        @item = Item.find(params[:id])
        @item.update(item_params)
        if @item.save
          redirect_to item_path(@item)
        else
          render :edit
        end
    end

    def destroy
      @item = Item.find(params[:id])
      @item.destroy
      flash[:message] = "Item deleted."
      redirect_to items_path

    end

    def by_location
      # byebug
      @items = Item.items_by_location(params[:location][:location_id].to_i)
      render :index
    end


  private
  
    # def require_login
    #     return head(:forbidden) unless session.include? :user_id
    # end

    def item_params
        params.require(:item).permit(:name, :price, :condition,
         :description, :image_url, :address, :location_id, :quantity, :user_id, :status)
    end

end
