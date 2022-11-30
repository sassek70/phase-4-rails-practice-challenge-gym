class GymsController < ApplicationController

    def index
        render json: Gym.all, status: :ok
    end
        
    def show
        render json: Gym.find(params[:id]), status: :ok
    end

    def destroy
        gym = Gym.find(params[:id])
        gym.destroy!
        head :no_content
    end
end
