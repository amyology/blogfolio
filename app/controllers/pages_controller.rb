class PagesController < ApplicationController

  include PagesHelper

  def home 
    @message = Message.new
  end

  def colorcrush
  end

  def jieyisushi
  end

  def sparkstart
  end

  def buymenow
  end

  def paramount
  end

end
