class LoansController < ApplicationController

  def index
    @loans = []
    render 'index'
  end

end
