class Api::V1::MessagesController < ApplicationController
  
  def index
    messages = Message.all 
    render json: messages, include: [:thoughts]
  end

  def show
    message = Message.find(params[:id])
    render json: message, include: [:thoughts]
  end

  def new
    message = Message.new 
    render json: message
  end

  def create
    message = Message.create(message_params)
    render json: message
  end

  private

  def message_params
    params.require(:message).permit(:conversation_id, :text, :date_and_time)
  end 
end
