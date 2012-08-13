class StaticPagesController < ApplicationController
  def home
  end

  def help
  end

  def about
  end

  def contact
    @title = "Contact"
  end
end
