class Api::V1::ConversationsController < ApplicationController
  
  def index
    conversations = Conversation.all 
    render json: conversations, include: [:messages]
  end

  def show
    conversation = Conversation.find(params[:id])
    render json: conversation, include: [:messages]
  end

  def new
    conversation = Conversation.new 
    render json: conversation
  end

  def create
    conversation = Conversation.create(conversation_params)
    render json: conversation
  end

  private

  def conversation_params
    params.require(:conversation).permit(:title, :start_date)
  end 
end
