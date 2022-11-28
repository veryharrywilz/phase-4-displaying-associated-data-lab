class ItemsController < ApplicationController

    def index
        items = Item.all
        render json: items, include: :user
      end
    
      def show
        item = Item.find(params[:id])
        render json: item, include: :user
      end

end
