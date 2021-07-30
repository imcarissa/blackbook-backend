class Api::V1::ContactsController < ApplicationController
    before_action :set_group

    def index
        contact = @group.contacts
        render json: @contacts
    end

    
    def show
        contact = Contact.find(params[:id])
        render json: contact
    end
    
    def create
        contact = @group.contacts.new(contact_params)
        if contact.save
            render json: @group
        else
            render json: {error: 'Contact not created'}
        end
    end

    def update
        if contact.update(contact_params)
          render json: contact
        else
          render json: {error: 'Contact not updated'}
        end
    end
    
    def destroy
        contact = contact.find(params[:id])
        group = Group.find(contact.group_id)
        contact.destory
        render json: group
    end

    private

    def set_group
        @group = Group.find(params[:group_id])
    end

    def contact_params
        params.require(:contact).permit(:group_id, :name, :img_url, :email, :phone_number, :notes)
    end
end
