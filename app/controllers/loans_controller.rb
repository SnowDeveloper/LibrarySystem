class LoansController < ApplicationController

  def index
    @loans = Loan.where(user_id: User.find_by_username('user2'))
    render 'index'
  end

  def show
    id = params[:id]
    @loan = Loan.find(id)

    if @loan
      redirect_to loans_path
      flash[:notice] = 'Extension accepted'
    else
      redirect_to loans_path
      flash[:notice] = 'Extension rejected'
    end

  end

  def extends
    id = params[:id]
    flash[:notice] = 'Extension accepted'
    redirect_to loans_path
  end

end
