class PagesController < ApplicationController

  include MessagesHelper

  def home 
    @message = Message.new
  end

  def colorcrush
  end

  def jieyisushi
  end

  def sparkstart
  end

end
