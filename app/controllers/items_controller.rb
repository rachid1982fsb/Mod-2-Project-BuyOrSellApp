class ItemsController < ApplicationController
    def index
        @items=Item.all
    end
    
    def new
        @item=Item.new
        @item.location = Location.new 
        cookies[:address]=User.last.address
        
    end

    def create 
        # byebug
        @item = Item.new(item_params) 
        # @item.location=Location.find_or_create_by(city: params[:item][:locations][:city], state: params[:item][:locations][:state], zipcode: params[:item][:locations][:zipcode])
        # @item.location.update(city: params[:item][:locations][:city], state: params[:item][:locations][:state], zipcode: params[:item][:locations][:zipcode])
        # @item.location_attributes(params[:item][:locations])
        if @item.save
          redirect_to item_path(@item)
        else
        #   @item = item.all
          render :new
        end
   end

      def show 
        @item = Item.find(params[:id])
      end

      private
      def item_params
        params.require(:item).permit(:name, :price, :condition,
         :description, :image_url, :address, :location_id, :quantity, :user_id)
        #   locations_attributes: [
        #       :city, :state, :Zipcode
        #   ])
    end

end
