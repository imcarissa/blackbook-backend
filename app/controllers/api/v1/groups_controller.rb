class Api::V1::GroupsController < ApplicationController

    def index
        groups = Group.all 
        render json: groups
    end

    def create
        group = Group.new(group_params)
        if group.save
            render json: group
        else
            render json: {error: 'Group not created'}
        end
    end

    def show
        group = Group.find(params[:id])
        render json: group
    end

    def update
        if group.update(group_params)
          render json: group
        else
          render json: {error: 'Group not updated'}
        end
    end
    
    def destroy
        group = Group.find(params[:id])
        group.destory
    end

    private

    def group_params
        params.require(:group).permit(:name, :category, :description)
    end
end
