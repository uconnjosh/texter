class NumbersController < ApplicationController
  def index
    @numbers = Number.all
  end

  def new
    @number = Number.new
  end

  def create
    @number = Number.create(number_params)
    redirect_to root_path
  end

  def show
    @number = Number.find(params[:id])
  end


private
  def number_params
    params.require(:number).permit(:user_id, :phone_number, :contact_name)
  end
end
