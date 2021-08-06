class Api::V1::ItemsController < ApplicationController
    before_action :set_wishlist

    def index
        items = @wishlist.item
        render json: items
    end

    
    def show
        item = Item.find(params[:id])
        render json: item
    end
    
    def create
        item = @wishlist.items.new(item_params)
        if item.save
            render json: @wishlist
        else
            render json: {error: 'item not created'}
        end
    end
    
    def destroy
        item = Item.find(params[:id])
        wishlist = @wishlist.find(item.wishlist_id)
        item.destory
        render json: @wishlist
    end

    private

    def set_wishlist
        @wishlist = Wishlist.find(params[:wishlist_id])
    end

    def item_params
        params.require(:item).permit(:wishlist_id, :name, :content)
    end
end
