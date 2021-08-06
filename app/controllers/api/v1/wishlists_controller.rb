class Api::V1::wishlistsController < ApplicationController

    def index
        wishlists = Wishlist.all 
        render json: wishlists
    end

    def create
        wishlist = Wishlist.new(wishlist_params)
        if wishlist.save
            render json: wishlist
        else
            render json: {error: 'wishlist not created'}
        end
    end

    def show
        wishlist = wishlist.find(params[:id])
        render json: wishlist
    end

    def update
        wishlist = wishlist.find(params[:id])
        if wishlist.update(wishlist_params)
            wishlist.save
            render json: wishlist
        else
          render json: {error: 'wishlist not updated'}
        end
    end
    
    def destroy
        wishlist = wishlist.find(params[:id])
        wishlist.destory
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:name, :description)
    end
end
