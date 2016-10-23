class MessagesController < ApplicationController

  include MessagesHelper

  def home
  end

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def sent
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(
      name: params[:name],
      email: params[:email],
      subject: params[:subject],
      message: params[:message]
      )
    if @message.save
      redirect_to '/sent'
    else
      render :new
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to '/messages'
  end

end
