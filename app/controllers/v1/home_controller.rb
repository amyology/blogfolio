class V1::HomeController < ApplicationController

  include PagesHelper

  def index
    @message = Message.new
  end

end
