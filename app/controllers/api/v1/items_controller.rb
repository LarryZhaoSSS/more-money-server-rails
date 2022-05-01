class Api::V1::ItemsController < ApplicationController
    def index
       items = Item.page params[:page]
       render json: {resources:items}
    end
    def create
        item = Item.new amount: params[:amount]
        if item.save
            render json: {resource:item}
        else 
            render json:{errors:item.errors}
        end
    end
end
