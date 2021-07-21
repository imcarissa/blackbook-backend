class ContactsController < ApplicationController

    def index

    end

    def create

    end

    def show

    end
    
    def destroy

    end

    private

    def contact_params
        params.require(:contact).permit(:name, :img_url, :email, :phone_number, :notes, :group_id)
end
