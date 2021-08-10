class Api::V1::WishlistsController < ApplicationController

    def index
        wishlists = Wishlist.all 
        render json: wishlists
    end

    def create
        wishlist = Wishlist.new(wishlist_params)
        if wishlist.save
            render json: wishlist, status: :accepted
        else
            render json: {error: 'wishlist not created'}
        end
    end

    def show
        wishlist = Wishlist.find(params[:id])
        render json: wishlist
    end
    
    def destroy
        wishlist = Wishlist.find(params[:id])
        wishlist.destory
        render json: wishlist
    end

    private

    def wishlist_params
        params.require(:wishlist).permit(:name, :description)
    end
end
