class ClientsController < ApplicationController

    def index
        render json: Client.all, status: :ok
    end

    def show
        render json: Client.find(params[:id]), include: :memberships
    end
end
