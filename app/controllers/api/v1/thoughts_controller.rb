class Api::V1::ThoughtsController < ApplicationController
  
  def index
    thoughts = Thought.all 
    render json: thoughts
  end

  def show
    thought = Thought.find(params[:id])
    render json: thought
  end

  def new
    thought = Thought.new 
    render json: thought
  end

  def create
    thought = Thought.create(thought_params)
    render json: thought
  end

  private

  def thought_params
    params.require(:thought).permit(:message_id, :text, :date_and_time)
  end 
end
