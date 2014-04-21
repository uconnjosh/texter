class MessagesController < ApplicationController
  def index
  	@messages = Message.all
    @message = Message.new
  end

  def new
  	@message = Message.new
  end

  def create
  	@message = Message.create(message_params)
  	redirect_to root_path
  end

  def show
  	@message = Message.find(params[:id])
  end

  def destroy
  	@message = Message.destroy(params[:id])
  end

private

  def message_params
  	params.require(:message).permit(:body, :to, :from)
  end
end
