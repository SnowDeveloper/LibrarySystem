class LoansController < ApplicationController

  def index
    @loans = Loan.all
    render 'index'
  end

end
