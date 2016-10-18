class MessagesController < ApplicationController

  def index
    @messages = Message.all
  end

  def show
    @message = Message.find(params[:id])
  end

  def sent
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
    end
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_to '/messages'
  end

end
