class MessagesController < ApplicationController

  before_action :authenticate_admin!, only: [:index, :show, :destroy]

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
    @message = Message.new(message_params)
    if @message.save
      AppMailer.message_email(@message).deliver_now
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

  private

  def message_params
    params.require(:message).permit(:name, :email, :subject, :message)
  end

end
