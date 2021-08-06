class Api::V1::ItemsController < ApplicationController
    before_action :set_wishlist

    def index
        item = @wishlist.items
        render json: @items
    end

    
    def show
        item = item.find(params[:id])
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

    def update
        if item.update(item_params)
          render json: item
        else
          render json: {error: 'item not updated'}
        end
    end
    
    def destroy
        item = item.find(params[:id])
        wishlist = wishlist.find(item.wishlist_id)
        item.destory
        render json: wishlist
    end

    private

    def set_wishlist
        @wishlist = wishlist.find(params[:wishlist_id])
    end

    def item_params
        params.require(:item).permit(:wishlist_id, :name, :content)
    end
end
