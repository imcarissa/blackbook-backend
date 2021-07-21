class ContactsController < ApplicationController
    before_action :set_group

    def index
        contact = @group.contacts
        render json: contacts
    end

    
    def show
        contact = Contact.find(params[:id])
        render json: contact
    end
    
    def create
        contact = @group.Contact.build
    end
    
    def destroy
        contact = contact.find(params[:id])
        contact.destory
    end

    private

    def set_group
        @group = Group.find(params[:contact_id])
    end

    def contact_params
        params.require(:contact).permit(:group_id, :name, :img_url, :email, :phone_number, :notes)
    end
end
